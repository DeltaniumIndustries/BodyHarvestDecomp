.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

/* Generated by spimdisasm 1.33.0 */

/* Handwritten function */
glabel func_80028260
    /* 28E60 80028260 18A00011 */  blez       $a1, .L800282A8
    /* 28E64 80028264 00000000 */   nop
    /* 28E68 80028268 240B2000 */  addiu      $t3, $zero, 0x2000
    /* 28E6C 8002826C 00AB082B */  sltu       $at, $a1, $t3
    /* 28E70 80028270 1020000F */  beqz       $at, .L800282B0
    /* 28E74 80028274 00000000 */   nop
    /* 28E78 80028278 00804025 */  or         $t0, $a0, $zero
    /* 28E7C 8002827C 00854821 */  addu       $t1, $a0, $a1
    /* 28E80 80028280 0109082B */  sltu       $at, $t0, $t1
    /* 28E84 80028284 10200008 */  beqz       $at, .L800282A8
    /* 28E88 80028288 00000000 */   nop
    /* 28E8C 8002828C 310A000F */  andi       $t2, $t0, 0xF
    /* 28E90 80028290 2529FFF0 */  addiu      $t1, $t1, -0x10
    /* 28E94 80028294 010A4023 */  subu       $t0, $t0, $t2
  .L80028298:
    /* 28E98 80028298 BD190000 */  cache      0x19, 0x0($t0) /* handwritten instruction */
    /* 28E9C 8002829C 0109082B */  sltu       $at, $t0, $t1
    /* 28EA0 800282A0 1420FFFD */  bnez       $at, .L80028298
    /* 28EA4 800282A4 25080010 */   addiu     $t0, $t0, 0x10
  .L800282A8:
    /* 28EA8 800282A8 03E00008 */  jr         $ra
    /* 28EAC 800282AC 00000000 */   nop
  .L800282B0:
    /* 28EB0 800282B0 3C088000 */  lui        $t0, 0x8000
    /* 28EB4 800282B4 010B4821 */  addu       $t1, $t0, $t3
    /* 28EB8 800282B8 2529FFF0 */  addiu      $t1, $t1, -0x10
  .L800282BC:
    /* 28EBC 800282BC BD010000 */  cache      0x01, 0x0($t0) /* handwritten instruction */
    /* 28EC0 800282C0 0109082B */  sltu       $at, $t0, $t1
    /* 28EC4 800282C4 1420FFFD */  bnez       $at, .L800282BC
    /* 28EC8 800282C8 25080010 */   addiu     $t0, $t0, (0x80000010 & 0xFFFF)
    /* 28ECC 800282CC 03E00008 */  jr         $ra
    /* 28ED0 800282D0 00000000 */   nop
    /* 28ED4 800282D4 00000000 */  nop
    /* 28ED8 800282D8 00000000 */  nop
    /* 28EDC 800282DC 00000000 */  nop
