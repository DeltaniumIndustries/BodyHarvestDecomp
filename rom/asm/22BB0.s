.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

/* Generated by spimdisasm 1.33.0 */

glabel func_80021FB0
    /* 22BB0 80021FB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 22BB4 80021FB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 22BB8 80021FB8 240E000F */  addiu      $t6, $zero, 0xF
    /* 22BBC 80021FBC A7AE0018 */  sh         $t6, 0x18($sp)
    /* 22BC0 80021FC0 27A50018 */  addiu      $a1, $sp, 0x18
    /* 22BC4 80021FC4 24840048 */  addiu      $a0, $a0, 0x48
    /* 22BC8 80021FC8 0C00AC47 */  jal        func_8002B11C
    /* 22BCC 80021FCC 00003025 */   or        $a2, $zero, $zero
    /* 22BD0 80021FD0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 22BD4 80021FD4 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 22BD8 80021FD8 03E00008 */  jr         $ra
    /* 22BDC 80021FDC 00000000 */   nop

glabel func_80021FE0
    /* 22BE0 80021FE0 8C860044 */  lw         $a2, 0x44($a0)
    /* 22BE4 80021FE4 8C820040 */  lw         $v0, 0x40($a0)
    /* 22BE8 80021FE8 00001825 */  or         $v1, $zero, $zero
    /* 22BEC 80021FEC 18C00020 */  blez       $a2, .L80022070
    /* 22BF0 80021FF0 24070030 */   addiu     $a3, $zero, 0x30
  .L80021FF4:
    /* 22BF4 80021FF4 00670019 */  multu      $v1, $a3
    /* 22BF8 80021FF8 00007012 */  mflo       $t6
    /* 22BFC 80021FFC 004E2021 */  addu       $a0, $v0, $t6
    /* 22C00 80022000 8C8F001C */  lw         $t7, 0x1C($a0)
    /* 22C04 80022004 15E00014 */  bnez       $t7, .L80022058
    /* 22C08 80022008 3C013F80 */   lui       $at, (0x3F800000 >> 16)
    /* 22C0C 8002200C 44812000 */  mtc1       $at, $ft0
    /* 22C10 80022010 24180005 */  addiu      $t8, $zero, 0x5
    /* 22C14 80022014 24190040 */  addiu      $t9, $zero, 0x40
    /* 22C18 80022018 AC85001C */  sw         $a1, 0x1C($a0)
    /* 22C1C 8002201C A4980020 */  sh         $t8, 0x20($a0)
    /* 22C20 80022020 AC800028 */  sw         $zero, 0x28($a0)
    /* 22C24 80022024 A099002E */  sb         $t9, 0x2E($a0)
    /* 22C28 80022028 A080002F */  sb         $zero, 0x2F($a0)
    /* 22C2C 8002202C E4840024 */  swc1       $ft0, 0x24($a0)
    /* 22C30 80022030 90A8000D */  lbu        $t0, 0xD($a1)
    /* 22C34 80022034 2401007F */  addiu      $at, $zero, 0x7F
    /* 22C38 80022038 00601025 */  or         $v0, $v1, $zero
    /* 22C3C 8002203C 00084BC0 */  sll        $t1, $t0, 15
    /* 22C40 80022040 01284823 */  subu       $t1, $t1, $t0
    /* 22C44 80022044 0121001A */  div        $zero, $t1, $at
    /* 22C48 80022048 00005012 */  mflo       $t2
    /* 22C4C 8002204C A48A002C */  sh         $t2, 0x2C($a0)
    /* 22C50 80022050 03E00008 */  jr         $ra
    /* 22C54 80022054 00000000 */   nop
  .L80022058:
    /* 22C58 80022058 24630001 */  addiu      $v1, $v1, 0x1
    /* 22C5C 8002205C 00035C00 */  sll        $t3, $v1, 16
    /* 22C60 80022060 000B1C03 */  sra        $v1, $t3, 16
    /* 22C64 80022064 0066082A */  slt        $at, $v1, $a2
    /* 22C68 80022068 1420FFE2 */  bnez       $at, .L80021FF4
    /* 22C6C 8002206C 00000000 */   nop
  .L80022070:
    /* 22C70 80022070 2402FFFF */  addiu      $v0, $zero, -0x1
    /* 22C74 80022074 03E00008 */  jr         $ra
    /* 22C78 80022078 00000000 */   nop
    /* 22C7C 8002207C 00000000 */  nop
