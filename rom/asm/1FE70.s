.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

/* Generated by spimdisasm 1.33.0 */

glabel func_8001F270
    /* 1FE70 8001F270 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 1FE74 8001F274 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1FE78 8001F278 AFA40028 */  sw         $a0, 0x28($sp)
    /* 1FE7C 8001F27C AFA5002C */  sw         $a1, 0x2C($sp)
    /* 1FE80 8001F280 AFA60030 */  sw         $a2, 0x30($sp)
    /* 1FE84 8001F284 0C008E6C */  jal        func_800239B0
    /* 1FE88 8001F288 AFB00018 */   sw        $s0, 0x18($sp)
    /* 1FE8C 8001F28C 3C0F8003 */  lui        $t7, %hi(D_80036734)
    /* 1FE90 8001F290 8DEF6734 */  lw         $t7, %lo(D_80036734)($t7)
    /* 1FE94 8001F294 8FAE0028 */  lw         $t6, 0x28($sp)
    /* 1FE98 8001F298 3C198003 */  lui        $t9, %hi(D_80036734)
    /* 1FE9C 8001F29C 3C098003 */  lui        $t1, %hi(D_80036734)
    /* 1FEA0 8001F2A0 ADEE0010 */  sw         $t6, 0x10($t7)
    /* 1FEA4 8001F2A4 8F396734 */  lw         $t9, %lo(D_80036734)($t9)
    /* 1FEA8 8001F2A8 8FB8002C */  lw         $t8, 0x2C($sp)
    /* 1FEAC 8001F2AC 00408025 */  or         $s0, $v0, $zero
    /* 1FEB0 8001F2B0 02002025 */  or         $a0, $s0, $zero
    /* 1FEB4 8001F2B4 AF380014 */  sw         $t8, 0x14($t9)
    /* 1FEB8 8001F2B8 8D296734 */  lw         $t1, %lo(D_80036734)($t1)
    /* 1FEBC 8001F2BC 8FA80030 */  lw         $t0, 0x30($sp)
    /* 1FEC0 8001F2C0 0C008E74 */  jal        func_800239D0
    /* 1FEC4 8001F2C4 A5280002 */   sh        $t0, 0x2($t1)
    /* 1FEC8 8001F2C8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1FECC 8001F2CC 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1FED0 8001F2D0 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 1FED4 8001F2D4 03E00008 */  jr         $ra
    /* 1FED8 8001F2D8 00000000 */   nop
    /* 1FEDC 8001F2DC 00000000 */  nop
