.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

/* Generated by spimdisasm 1.33.0 */

glabel func_8002B560
    /* 2C160 8002B560 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2C164 8002B564 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2C168 8002B568 AFA40018 */  sw         $a0, 0x18($sp)
    /* 2C16C 8002B56C AFA60020 */  sw         $a2, 0x20($sp)
    /* 2C170 8002B570 8CAE0008 */  lw         $t6, 0x8($a1)
    /* 2C174 8002B574 51C00018 */  beql       $t6, $zero, .L8002B5D8
    /* 2C178 8002B578 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2C17C 8002B57C 0C006F80 */  jal        func_8001BE00
    /* 2C180 8002B580 AFA5001C */   sw        $a1, 0x1C($sp)
    /* 2C184 8002B584 8FA7001C */  lw         $a3, 0x1C($sp)
    /* 2C188 8002B588 10400012 */  beqz       $v0, .L8002B5D4
    /* 2C18C 8002B58C 00403025 */   or        $a2, $v0, $zero
    /* 2C190 8002B590 8FAF0018 */  lw         $t7, 0x18($sp)
    /* 2C194 8002B594 8CF90008 */  lw         $t9, 0x8($a3)
    /* 2C198 8002B598 240A0007 */  addiu      $t2, $zero, 0x7
    /* 2C19C 8002B59C 8DF8001C */  lw         $t8, 0x1C($t7)
    /* 2C1A0 8002B5A0 8F2800D8 */  lw         $t0, 0xD8($t9)
    /* 2C1A4 8002B5A4 A44A0008 */  sh         $t2, 0x8($v0)
    /* 2C1A8 8002B5A8 24050003 */  addiu      $a1, $zero, 0x3
    /* 2C1AC 8002B5AC 03084821 */  addu       $t1, $t8, $t0
    /* 2C1B0 8002B5B0 AC490004 */  sw         $t1, 0x4($v0)
    /* 2C1B4 8002B5B4 C7A40020 */  lwc1       $ft0, 0x20($sp)
    /* 2C1B8 8002B5B8 AC400000 */  sw         $zero, 0x0($v0)
    /* 2C1BC 8002B5BC E444000C */  swc1       $ft0, 0xC($v0)
    /* 2C1C0 8002B5C0 8CEB0008 */  lw         $t3, 0x8($a3)
    /* 2C1C4 8002B5C4 8D64000C */  lw         $a0, 0xC($t3)
    /* 2C1C8 8002B5C8 8C990008 */  lw         $t9, 0x8($a0)
    /* 2C1CC 8002B5CC 0320F809 */  jalr       $t9
    /* 2C1D0 8002B5D0 00000000 */   nop
  .L8002B5D4:
    /* 2C1D4 8002B5D4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8002B5D8:
    /* 2C1D8 8002B5D8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2C1DC 8002B5DC 03E00008 */  jr         $ra
    /* 2C1E0 8002B5E0 00000000 */   nop
    /* 2C1E4 8002B5E4 00000000 */  nop
    /* 2C1E8 8002B5E8 00000000 */  nop
    /* 2C1EC 8002B5EC 00000000 */  nop
