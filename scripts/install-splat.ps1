# install-splat.ps1
# Run from the 'scripts/' folder; installs splat into a venv in the project root

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = Split-Path -Parent $ScriptDir
$VenvPath = Join-Path $ProjectRoot ".venv"

function Ensure-Python {
    Write-Output "Checking for Python 3..."

    # Try to find Python 3 in the system
    $python = Get-Command python3 -ErrorAction SilentlyContinue
    if (-not $python) {
        $python = Get-Command python -ErrorAction SilentlyContinue
    }

    # If Python is still not found, attempt installation via winget
    if (-not $python) {
        Write-Output "Python not found. Attempting to install Python via winget..."

        # Check if winget is available before proceeding with installation
        $winget = Get-Command winget -ErrorAction SilentlyContinue
        if ($winget) {
            try {
                # Attempt installation of Python 3
                Write-Output "Installing Python 3 using winget..."
                winget install --id Python.Python.3 --source winget --accept-package-agreements --accept-source-agreements

                # Verify installation was successful
                $python = Get-Command python3 -ErrorAction SilentlyContinue
                if (-not $python) {
                    throw "Python installation via winget failed. Please install Python manually."
                }
            }
            catch {
                Write-Error "Error during Python installation: $_"
                throw "Python installation failed. Please install Python manually."
            }
        }
        else {
            Write-Error "winget is not available. Please install Python manually from: https://www.python.org/downloads/"
            throw "winget is not available. Cannot proceed without Python."
        }
    }
    else {
        Write-Output "Python found: $($python.Source)"
    }

    # Check if the Python executable is from the Microsoft Store (likely a shortcut)
    if ($python.Source -match "WindowsApps") {
        Write-Warning "Detected Microsoft Store Python shortcut at $($python.Source). Running this will open the Store instead of a functional Python installation."

        # Try running python to see if it works
        try {
            $pythonVersion = & $python --version 2>&1
            if ($pythonVersion -match "not found") {
                Write-Error "Microsoft Store Python is not fully functional. Please install Python manually from https://www.python.org/downloads/"
                throw "Microsoft Store Python is not functional."
            } else {
                Write-Output "Microsoft Store Python detected. To fix, disable the app shortcut in Settings > Apps > Advanced app settings > App execution aliases."
            }
        }
        catch {
            Write-Error "Unable to run Python from the Microsoft Store shortcut. Please install a proper Python installation."
            throw "Microsoft Store Python is not functional."
        }
    }

    # Ensure we are using the correct Python executable and check version
    $pythonPath = $python.Source
    try {
        # Check for the python version from the correct executable
        $pythonVersion = & $pythonPath --version 2>&1
        Write-Output "Detected Python version: $pythonVersion"
        if ($pythonVersion -match "Python (\d+)\.(\d+)") {
            $majorVersion = [int]$matches[1]
            $minorVersion = [int]$matches[2]
            if ($majorVersion -lt 3 -or ($majorVersion -eq 3 -and $minorVersion -lt 6)) {
                Write-Error "Python 3.6 or higher is required. Detected version: $pythonVersion"
                throw "Incompatible Python version."
            }
        } else {
            Write-Error "Unable to parse Python version."
            throw "Unable to determine Python version."
        }
    }
    catch {
        Write-Error "Error checking Python version: $_"
        throw "Python version check failed. Please ensure Python is installed correctly."
    }
}

function Setup-Venv {
    Write-Output "Checking for existing virtual environment at $VenvPath..."

    # Check if the virtual environment exists
    if (-Not (Test-Path $VenvPath)) {
        Write-Output "Virtual environment not found. Creating new virtual environment at $VenvPath..."

        try {
            # Ensure Python is functional
            $pythonVersion = & python --version 2>&1
            if ($pythonVersion -match "not found") {
                Write-Error "Python is not functional. Please install Python from https://www.python.org/downloads/"
                throw "Python not functional."
            }

            # Attempt to create the virtual environment
            python -m venv $VenvPath

            # Verify the creation of the virtual environment
            if (-Not (Test-Path $VenvPath)) {
                throw "Failed to create virtual environment at $VenvPath."
            }

            Write-Output "Virtual environment successfully created at $VenvPath."
        }
        catch {
            Write-Error "Error creating virtual environment: $_"
            throw "Virtual environment setup failed. Please ensure Python is installed correctly."
        }
    } else {
        Write-Output "Virtual environment already exists at $VenvPath."
    }

    # Ensure the virtual environment has Python installed in the .venv directory
    $venvPython = Join-Path $VenvPath "Scripts\python.exe"
    if (-Not (Test-Path $venvPython)) {
        Write-Output "Python executable not found in virtual environment. Installing Python..."

        try {
            # Recreate the virtual environment with python to ensure it's properly installed
            python -m venv --upgrade $VenvPath

            # Check again if python is present
            if (-Not (Test-Path $venvPython)) {
                Write-Error "Python still not found in virtual environment. Recreate the virtual environment manually."
                throw "Failed to install Python in virtual environment."
            }

            Write-Output "Python successfully installed in virtual environment."
        }
        catch {
            Write-Error "Error upgrading virtual environment: $_"
            throw "Error upgrading the virtual environment."
        }
    }

    # Activate the virtual environment automatically
    $activateScript = Join-Path $VenvPath "Scripts\Activate.ps1"
    if (Test-Path $activateScript) {
        Write-Output "Activating virtual environment..."
        & $activateScript
        Write-Output "Virtual environment activated."
    } else {
        Write-Error "Activation script (Activate.ps1) not found. Something went wrong with virtual environment setup."
        throw "Activation script missing."
    }
}


function Install-Splat {
    $venvPython = Join-Path $VenvPath "scripts/python.exe"  # Point to the correct location for python.exe in the venv

    Write-Output "Checking for virtual environment Python at $venvPython..."

    # Ensure the virtual environment Python exists
    if (-Not (Test-Path $venvPython)) {
        Write-Error "Virtual environment Python not found at $venvPython. Please ensure the virtual environment is set up correctly."
        exit 1
    }

    Write-Output "Upgrading pip in virtual environment..."

    try {
        # Upgrade pip if necessary
        & $venvPython -m pip install --upgrade pip
    }
    catch {
        Write-Error "Failed to upgrade pip: $_"
        exit 1
    }

    Write-Output "Installing Splat from GitHub..."

    try {
        # Install Splat from GitHub
        & $venvPython -m pip install "splat64 @ git+https://github.com/ethteck/splat.git#egg=splat64[dev]"
    }
    catch {
        Write-Error "Failed to install Splat: $_"
        exit 1
    }
	pip install spimdisasm

    Write-Output "`nSplat64 successfully installed in virtual environment."

    Write-Output "To use Splat64, activate the virtual environment by running:"
    Write-Output "    $VenvPath\Scripts\Activate.ps1"
    Write-Output "Then run:"
    Write-Output "    splat splat.yaml"
}

# ========================
# Execute the script logic
# ========================
Write-Host "Starting setup for Body Harvest Decomp..."
Ensure-Python
Setup-Venv
Install-Splat
