.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

/* Generated by spimdisasm 1.33.0 */

glabel func_80022170
    /* 22D70 80022170 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 22D74 80022174 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 22D78 80022178 AFA50034 */  sw         $a1, 0x34($sp)
    /* 22D7C 8002217C 8C820040 */  lw         $v0, 0x40($a0)
    /* 22D80 80022180 240F0003 */  addiu      $t7, $zero, 0x3
    /* 22D84 80022184 A7AF0020 */  sh         $t7, 0x20($sp)
    /* 22D88 80022188 8C98003C */  lw         $t8, 0x3C($a0)
    /* 22D8C 8002218C 00A07025 */  or         $t6, $a1, $zero
    /* 22D90 80022190 A7AE0028 */  sh         $t6, 0x28($sp)
    /* 22D94 80022194 0018C880 */  sll        $t9, $t8, 2
    /* 22D98 80022198 0338C823 */  subu       $t9, $t9, $t8
    /* 22D9C 8002219C 0019C900 */  sll        $t9, $t9, 4
    /* 22DA0 800221A0 03224821 */  addu       $t1, $t9, $v0
    /* 22DA4 800221A4 AFA90024 */  sw         $t1, 0x24($sp)
    /* 22DA8 800221A8 27A50020 */  addiu      $a1, $sp, 0x20
    /* 22DAC 800221AC 24840014 */  addiu      $a0, $a0, 0x14
    /* 22DB0 800221B0 0C00AC47 */  jal        func_8002B11C
    /* 22DB4 800221B4 00003025 */   or        $a2, $zero, $zero
    /* 22DB8 800221B8 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 22DBC 800221BC 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 22DC0 800221C0 03E00008 */  jr         $ra
    /* 22DC4 800221C4 00000000 */   nop
    /* 22DC8 800221C8 00000000 */  nop
    /* 22DCC 800221CC 00000000 */  nop
