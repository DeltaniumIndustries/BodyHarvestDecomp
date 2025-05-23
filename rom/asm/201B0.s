.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

/* Generated by spimdisasm 1.33.0 */

glabel func_8001F5B0
    /* 201B0 8001F5B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 201B4 8001F5B4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 201B8 8001F5B8 E7AC0028 */  swc1       $fa0, 0x28($sp)
    /* 201BC 8001F5BC AFB10018 */  sw         $s1, 0x18($sp)
    /* 201C0 8001F5C0 0C008E6C */  jal        func_800239B0
    /* 201C4 8001F5C4 AFB00014 */   sw        $s0, 0x14($sp)
    /* 201C8 8001F5C8 3C0E8003 */  lui        $t6, %hi(D_80036734)
    /* 201CC 8001F5CC 8DCE6734 */  lw         $t6, %lo(D_80036734)($t6)
    /* 201D0 8001F5D0 C7A40028 */  lwc1       $ft0, 0x28($sp)
    /* 201D4 8001F5D4 3C0F8003 */  lui        $t7, %hi(D_80036734)
    /* 201D8 8001F5D8 3C088003 */  lui        $t0, %hi(D_80036734)
    /* 201DC 8001F5DC E5C40018 */  swc1       $ft0, 0x18($t6)
    /* 201E0 8001F5E0 8DEF6734 */  lw         $t7, %lo(D_80036734)($t7)
    /* 201E4 8001F5E4 00408825 */  or         $s1, $v0, $zero
    /* 201E8 8001F5E8 95F80000 */  lhu        $t8, 0x0($t7)
    /* 201EC 8001F5EC 37190002 */  ori        $t9, $t8, 0x2
    /* 201F0 8001F5F0 A5F90000 */  sh         $t9, 0x0($t7)
    /* 201F4 8001F5F4 8D086734 */  lw         $t0, %lo(D_80036734)($t0)
    /* 201F8 8001F5F8 8D090008 */  lw         $t1, 0x8($t0)
    /* 201FC 8001F5FC C5060018 */  lwc1       $ft1, 0x18($t0)
    /* 20200 8001F600 8D300020 */  lw         $s0, 0x20($t1)
    /* 20204 8001F604 320A0FFF */  andi       $t2, $s0, 0xFFF
    /* 20208 8001F608 01408025 */  or         $s0, $t2, $zero
    /* 2020C 8001F60C 44904000 */  mtc1       $s0, $ft2
    /* 20210 8001F610 06010005 */  bgez       $s0, .L8001F628
    /* 20214 8001F614 468042A0 */   cvt.s.w   $ft3, $ft2
    /* 20218 8001F618 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 2021C 8001F61C 44818000 */  mtc1       $at, $ft4
    /* 20220 8001F620 00000000 */  nop
    /* 20224 8001F624 46105280 */  add.s      $ft3, $ft3, $ft4
  .L8001F628:
    /* 20228 8001F628 460A3482 */  mul.s      $ft5, $ft1, $ft3
    /* 2022C 8001F62C 240C0001 */  addiu      $t4, $zero, 0x1
    /* 20230 8001F630 444BF800 */  cfc1       $t3, $31
    /* 20234 8001F634 44CCF800 */  ctc1       $t4, $31
    /* 20238 8001F638 00000000 */  nop
    /* 2023C 8001F63C 46009124 */  cvt.w.s    $ft0, $ft5
    /* 20240 8001F640 444CF800 */  cfc1       $t4, $31
    /* 20244 8001F644 00000000 */  nop
    /* 20248 8001F648 31810004 */  andi       $at, $t4, 0x4
    /* 2024C 8001F64C 318C0078 */  andi       $t4, $t4, 0x78
    /* 20250 8001F650 11800013 */  beqz       $t4, .L8001F6A0
    /* 20254 8001F654 3C014F00 */   lui       $at, (0x4F000000 >> 16)
    /* 20258 8001F658 44812000 */  mtc1       $at, $ft0
    /* 2025C 8001F65C 240C0001 */  addiu      $t4, $zero, 0x1
    /* 20260 8001F660 46049101 */  sub.s      $ft0, $ft5, $ft0
    /* 20264 8001F664 44CCF800 */  ctc1       $t4, $31
    /* 20268 8001F668 00000000 */  nop
    /* 2026C 8001F66C 46002124 */  cvt.w.s    $ft0, $ft0
    /* 20270 8001F670 444CF800 */  cfc1       $t4, $31
    /* 20274 8001F674 00000000 */  nop
    /* 20278 8001F678 31810004 */  andi       $at, $t4, 0x4
    /* 2027C 8001F67C 318C0078 */  andi       $t4, $t4, 0x78
    /* 20280 8001F680 15800005 */  bnez       $t4, .L8001F698
    /* 20284 8001F684 00000000 */   nop
    /* 20288 8001F688 440C2000 */  mfc1       $t4, $ft0
    /* 2028C 8001F68C 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* 20290 8001F690 10000007 */  b          .L8001F6B0
    /* 20294 8001F694 01816025 */   or        $t4, $t4, $at
  .L8001F698:
    /* 20298 8001F698 10000005 */  b          .L8001F6B0
    /* 2029C 8001F69C 240CFFFF */   addiu     $t4, $zero, -0x1
  .L8001F6A0:
    /* 202A0 8001F6A0 440C2000 */  mfc1       $t4, $ft0
    /* 202A4 8001F6A4 00000000 */  nop
    /* 202A8 8001F6A8 0580FFFB */  bltz       $t4, .L8001F698
    /* 202AC 8001F6AC 00000000 */   nop
  .L8001F6B0:
    /* 202B0 8001F6B0 44CBF800 */  ctc1       $t3, $31
    /* 202B4 8001F6B4 318D0FFF */  andi       $t5, $t4, 0xFFF
    /* 202B8 8001F6B8 AD0D0020 */  sw         $t5, 0x20($t0)
    /* 202BC 8001F6BC 0C008E74 */  jal        func_800239D0
    /* 202C0 8001F6C0 02202025 */   or        $a0, $s1, $zero
    /* 202C4 8001F6C4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 202C8 8001F6C8 8FB00014 */  lw         $s0, 0x14($sp)
    /* 202CC 8001F6CC 8FB10018 */  lw         $s1, 0x18($sp)
    /* 202D0 8001F6D0 03E00008 */  jr         $ra
    /* 202D4 8001F6D4 27BD0028 */   addiu     $sp, $sp, 0x28
    /* 202D8 8001F6D8 00000000 */  nop
    /* 202DC 8001F6DC 00000000 */  nop
