.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

/* Generated by spimdisasm 1.33.0 */

glabel func_80022BE0
    /* 237E0 80022BE0 3C018004 */  lui        $at, %hi(D_80039BE0)
    /* 237E4 80022BE4 C4209BE0 */  lwc1       $fv0, %lo(D_80039BE0)($at)
    /* 237E8 80022BE8 44856000 */  mtc1       $a1, $fa0
    /* 237EC 80022BEC 44867000 */  mtc1       $a2, $fa1
    /* 237F0 80022BF0 44878000 */  mtc1       $a3, $ft4
    /* 237F4 80022BF4 46006302 */  mul.s      $fa0, $fa0, $fv0
    /* 237F8 80022BF8 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 237FC 80022BFC AFBF002C */  sw         $ra, 0x2C($sp)
    /* 23800 80022C00 46007382 */  mul.s      $fa1, $fa1, $fv0
    /* 23804 80022C04 AFB00028 */  sw         $s0, 0x28($sp)
    /* 23808 80022C08 3C018007 */  lui        $at, %hi(D_8006EE70)
    /* 2380C 80022C0C 46008402 */  mul.s      $ft4, $ft4, $fv0
    /* 23810 80022C10 00808025 */  or         $s0, $a0, $zero
    /* 23814 80022C14 F7B60020 */  sdc1       $fs1, 0x20($sp)
    /* 23818 80022C18 F7B40018 */  sdc1       $fs0, 0x18($sp)
    /* 2381C 80022C1C E7AE0050 */  swc1       $fa1, 0x50($sp)
    /* 23820 80022C20 E7AC004C */  swc1       $fa0, 0x4C($sp)
    /* 23824 80022C24 E420EE70 */  swc1       $fv0, %lo(D_8006EE70)($at)
    /* 23828 80022C28 0C00797C */  jal        func_8001E5F0
    /* 2382C 80022C2C E7B00054 */   swc1      $ft4, 0x54($sp)
    /* 23830 80022C30 C7AC004C */  lwc1       $fa0, 0x4C($sp)
    /* 23834 80022C34 0C0079EC */  jal        func_8001E7B0
    /* 23838 80022C38 46000506 */   mov.s     $fs0, $fv0
    /* 2383C 80022C3C 46000586 */  mov.s      $fs1, $fv0
    /* 23840 80022C40 0C00797C */  jal        func_8001E5F0
    /* 23844 80022C44 C7AC0050 */   lwc1      $fa0, 0x50($sp)
    /* 23848 80022C48 E7A00040 */  swc1       $fv0, 0x40($sp)
    /* 2384C 80022C4C 0C0079EC */  jal        func_8001E7B0
    /* 23850 80022C50 C7AC0050 */   lwc1      $fa0, 0x50($sp)
    /* 23854 80022C54 C7AC0054 */  lwc1       $fa0, 0x54($sp)
    /* 23858 80022C58 0C00797C */  jal        func_8001E5F0
    /* 2385C 80022C5C E7A00034 */   swc1      $fv0, 0x34($sp)
    /* 23860 80022C60 C7AC0054 */  lwc1       $fa0, 0x54($sp)
    /* 23864 80022C64 0C0079EC */  jal        func_8001E7B0
    /* 23868 80022C68 E7A0003C */   swc1      $fv0, 0x3C($sp)
    /* 2386C 80022C6C 02002025 */  or         $a0, $s0, $zero
    /* 23870 80022C70 0C009FE4 */  jal        func_80027F90
    /* 23874 80022C74 E7A00030 */   swc1      $fv0, 0x30($sp)
    /* 23878 80022C78 C7AC0030 */  lwc1       $fa0, 0x30($sp)
    /* 2387C 80022C7C C7AE0034 */  lwc1       $fa1, 0x34($sp)
    /* 23880 80022C80 C7A2003C */  lwc1       $fv1, 0x3C($sp)
    /* 23884 80022C84 C7B00040 */  lwc1       $ft4, 0x40($sp)
    /* 23888 80022C88 460C7102 */  mul.s      $ft0, $fa1, $fa0
    /* 2388C 80022C8C 46008207 */  neg.s      $ft2, $ft4
    /* 23890 80022C90 46027182 */  mul.s      $ft1, $fa1, $fv1
    /* 23894 80022C94 E6080008 */  swc1       $ft2, 0x8($s0)
    /* 23898 80022C98 4610A002 */  mul.s      $fv0, $fs0, $ft4
    /* 2389C 80022C9C E6040000 */  swc1       $ft0, 0x0($s0)
    /* 238A0 80022CA0 E6060004 */  swc1       $ft1, 0x4($s0)
    /* 238A4 80022CA4 460C0282 */  mul.s      $ft3, $fv0, $fa0
    /* 238A8 80022CA8 00000000 */  nop
    /* 238AC 80022CAC 4602B482 */  mul.s      $ft5, $fs1, $fv1
    /* 238B0 80022CB0 00000000 */  nop
    /* 238B4 80022CB4 46020182 */  mul.s      $ft1, $fv0, $fv1
    /* 238B8 80022CB8 00000000 */  nop
    /* 238BC 80022CBC 460CB202 */  mul.s      $ft2, $fs1, $fa0
    /* 238C0 80022CC0 46125101 */  sub.s      $ft0, $ft3, $ft5
    /* 238C4 80022CC4 460EA482 */  mul.s      $ft5, $fs0, $fa1
    /* 238C8 80022CC8 00000000 */  nop
    /* 238CC 80022CCC 4610B002 */  mul.s      $fv0, $fs1, $ft4
    /* 238D0 80022CD0 E6040010 */  swc1       $ft0, 0x10($s0)
    /* 238D4 80022CD4 46083280 */  add.s      $ft3, $ft1, $ft2
    /* 238D8 80022CD8 E6120018 */  swc1       $ft5, 0x18($s0)
    /* 238DC 80022CDC E60A0014 */  swc1       $ft3, 0x14($s0)
    /* 238E0 80022CE0 460C0102 */  mul.s      $ft0, $fv0, $fa0
    /* 238E4 80022CE4 00000000 */  nop
    /* 238E8 80022CE8 4602A182 */  mul.s      $ft1, $fs0, $fv1
    /* 238EC 80022CEC 00000000 */  nop
    /* 238F0 80022CF0 46020282 */  mul.s      $ft3, $fv0, $fv1
    /* 238F4 80022CF4 00000000 */  nop
    /* 238F8 80022CF8 460CA482 */  mul.s      $ft5, $fs0, $fa0
    /* 238FC 80022CFC 46062200 */  add.s      $ft2, $ft0, $ft1
    /* 23900 80022D00 460EB182 */  mul.s      $ft1, $fs1, $fa1
    /* 23904 80022D04 E6080020 */  swc1       $ft2, 0x20($s0)
    /* 23908 80022D08 46125101 */  sub.s      $ft0, $ft3, $ft5
    /* 2390C 80022D0C E6060028 */  swc1       $ft1, 0x28($s0)
    /* 23910 80022D10 E6040024 */  swc1       $ft0, 0x24($s0)
    /* 23914 80022D14 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 23918 80022D18 8FB00028 */  lw         $s0, 0x28($sp)
    /* 2391C 80022D1C D7B60020 */  ldc1       $fs1, 0x20($sp)
    /* 23920 80022D20 D7B40018 */  ldc1       $fs0, 0x18($sp)
    /* 23924 80022D24 03E00008 */  jr         $ra
    /* 23928 80022D28 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80022D2C
    /* 2392C 80022D2C 44856000 */  mtc1       $a1, $fa0
    /* 23930 80022D30 44867000 */  mtc1       $a2, $fa1
    /* 23934 80022D34 44878000 */  mtc1       $a3, $ft4
    /* 23938 80022D38 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 2393C 80022D3C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 23940 80022D40 AFA40058 */  sw         $a0, 0x58($sp)
    /* 23944 80022D44 44056000 */  mfc1       $a1, $fa0
    /* 23948 80022D48 44067000 */  mfc1       $a2, $fa1
    /* 2394C 80022D4C 44078000 */  mfc1       $a3, $ft4
    /* 23950 80022D50 0C008AF8 */  jal        func_80022BE0
    /* 23954 80022D54 27A40018 */   addiu     $a0, $sp, 0x18
    /* 23958 80022D58 27A40018 */  addiu      $a0, $sp, 0x18
    /* 2395C 80022D5C 0C009FA4 */  jal        func_80027E90
    /* 23960 80022D60 8FA50058 */   lw        $a1, 0x58($sp)
    /* 23964 80022D64 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 23968 80022D68 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 2396C 80022D6C 03E00008 */  jr         $ra
    /* 23970 80022D70 00000000 */   nop
    /* 23974 80022D74 00000000 */  nop
    /* 23978 80022D78 00000000 */  nop
    /* 2397C 80022D7C 00000000 */  nop
