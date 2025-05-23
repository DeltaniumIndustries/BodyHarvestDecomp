.include "macro.inc"

.set noat
.set noreorder
.set gp=64

.section .text, "ax"

/* Generated by spimdisasm 1.33.0 */

glabel func_8001DBB0
    /* 1E7B0 8001DBB0 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1E7B4 8001DBB4 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 1E7B8 8001DBB8 AFB00048 */  sw         $s0, 0x48($sp)
    /* 1E7BC 8001DBBC 00808025 */  or         $s0, $a0, $zero
    /* 1E7C0 8001DBC0 F7BE0040 */  sdc1       $fs5, 0x40($sp)
    /* 1E7C4 8001DBC4 F7BC0038 */  sdc1       $fs4, 0x38($sp)
    /* 1E7C8 8001DBC8 F7BA0030 */  sdc1       $fs3, 0x30($sp)
    /* 1E7CC 8001DBCC F7B80028 */  sdc1       $fs2, 0x28($sp)
    /* 1E7D0 8001DBD0 F7B60020 */  sdc1       $fs1, 0x20($sp)
    /* 1E7D4 8001DBD4 F7B40018 */  sdc1       $fs0, 0x18($sp)
    /* 1E7D8 8001DBD8 AFA50054 */  sw         $a1, 0x54($sp)
    /* 1E7DC 8001DBDC AFA60058 */  sw         $a2, 0x58($sp)
    /* 1E7E0 8001DBE0 0C009FE4 */  jal        func_80027F90
    /* 1E7E4 8001DBE4 AFA7005C */   sw        $a3, 0x5C($sp)
    /* 1E7E8 8001DBE8 C7A40060 */  lwc1       $ft0, 0x60($sp)
    /* 1E7EC 8001DBEC C7A60054 */  lwc1       $ft1, 0x54($sp)
    /* 1E7F0 8001DBF0 C7A80064 */  lwc1       $ft2, 0x64($sp)
    /* 1E7F4 8001DBF4 C7AA0058 */  lwc1       $ft3, 0x58($sp)
    /* 1E7F8 8001DBF8 46062001 */  sub.s      $fv0, $ft0, $ft1
    /* 1E7FC 8001DBFC C7A6005C */  lwc1       $ft1, 0x5C($sp)
    /* 1E800 8001DC00 C7A40068 */  lwc1       $ft0, 0x68($sp)
    /* 1E804 8001DC04 460A4581 */  sub.s      $fs1, $ft2, $ft3
    /* 1E808 8001DC08 46000202 */  mul.s      $ft2, $fv0, $fv0
    /* 1E80C 8001DC0C 46000506 */  mov.s      $fs0, $fv0
    /* 1E810 8001DC10 46062601 */  sub.s      $fs2, $ft0, $ft1
    /* 1E814 8001DC14 4616B282 */  mul.s      $ft3, $fs1, $fs1
    /* 1E818 8001DC18 460A4100 */  add.s      $ft0, $ft2, $ft3
    /* 1E81C 8001DC1C 4618C182 */  mul.s      $ft1, $fs2, $fs2
    /* 1E820 8001DC20 0C007650 */  jal        func_8001D940
    /* 1E824 8001DC24 46062300 */   add.s     $fa0, $ft0, $ft1
    /* 1E828 8001DC28 3C01BFF0 */  lui        $at, (0xBFF00000 >> 16)
    /* 1E82C 8001DC2C 44814800 */  mtc1       $at, $ft2f
    /* 1E830 8001DC30 44804000 */  mtc1       $zero, $ft2
    /* 1E834 8001DC34 460002A1 */  cvt.d.s    $ft3, $fv0
    /* 1E838 8001DC38 C7A60070 */  lwc1       $ft1, 0x70($sp)
    /* 1E83C 8001DC3C 462A4103 */  div.d      $ft0, $ft2, $ft3
    /* 1E840 8001DC40 C7AA0074 */  lwc1       $ft3, 0x74($sp)
    /* 1E844 8001DC44 462020A0 */  cvt.s.d    $fv1, $ft0
    /* 1E848 8001DC48 4602A502 */  mul.s      $fs0, $fs0, $fv1
    /* 1E84C 8001DC4C 00000000 */  nop
    /* 1E850 8001DC50 4602B582 */  mul.s      $fs1, $fs1, $fv1
    /* 1E854 8001DC54 00000000 */  nop
    /* 1E858 8001DC58 4602C602 */  mul.s      $fs2, $fs2, $fv1
    /* 1E85C 8001DC5C 00000000 */  nop
    /* 1E860 8001DC60 46183202 */  mul.s      $ft2, $ft1, $fs2
    /* 1E864 8001DC64 00000000 */  nop
    /* 1E868 8001DC68 46165102 */  mul.s      $ft0, $ft3, $fs1
    /* 1E86C 8001DC6C 46044681 */  sub.s      $fs3, $ft2, $ft0
    /* 1E870 8001DC70 46145202 */  mul.s      $ft2, $ft3, $fs0
    /* 1E874 8001DC74 C7A4006C */  lwc1       $ft0, 0x6C($sp)
    /* 1E878 8001DC78 46182282 */  mul.s      $ft3, $ft0, $fs2
    /* 1E87C 8001DC7C 460A4701 */  sub.s      $fs4, $ft2, $ft3
    /* 1E880 8001DC80 46162202 */  mul.s      $ft2, $ft0, $fs1
    /* 1E884 8001DC84 00000000 */  nop
    /* 1E888 8001DC88 46143282 */  mul.s      $ft3, $ft1, $fs0
    /* 1E88C 8001DC8C 460A4781 */  sub.s      $fs5, $ft2, $ft3
    /* 1E890 8001DC90 461AD102 */  mul.s      $ft0, $fs3, $fs3
    /* 1E894 8001DC94 00000000 */  nop
    /* 1E898 8001DC98 461CE182 */  mul.s      $ft1, $fs4, $fs4
    /* 1E89C 8001DC9C 46062200 */  add.s      $ft2, $ft0, $ft1
    /* 1E8A0 8001DCA0 461EF282 */  mul.s      $ft3, $fs5, $fs5
    /* 1E8A4 8001DCA4 0C007650 */  jal        func_8001D940
    /* 1E8A8 8001DCA8 460A4300 */   add.s     $fa0, $ft2, $ft3
    /* 1E8AC 8001DCAC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 1E8B0 8001DCB0 44812800 */  mtc1       $at, $ft0f
    /* 1E8B4 8001DCB4 44802000 */  mtc1       $zero, $ft0
    /* 1E8B8 8001DCB8 460001A1 */  cvt.d.s    $ft1, $fv0
    /* 1E8BC 8001DCBC 46262203 */  div.d      $ft2, $ft0, $ft1
    /* 1E8C0 8001DCC0 462040A0 */  cvt.s.d    $fv1, $ft2
    /* 1E8C4 8001DCC4 4602D682 */  mul.s      $fs3, $fs3, $fv1
    /* 1E8C8 8001DCC8 00000000 */  nop
    /* 1E8CC 8001DCCC 4602E702 */  mul.s      $fs4, $fs4, $fv1
    /* 1E8D0 8001DCD0 00000000 */  nop
    /* 1E8D4 8001DCD4 4602F782 */  mul.s      $fs5, $fs5, $fv1
    /* 1E8D8 8001DCD8 00000000 */  nop
    /* 1E8DC 8001DCDC 461EB282 */  mul.s      $ft3, $fs1, $fs5
    /* 1E8E0 8001DCE0 00000000 */  nop
    /* 1E8E4 8001DCE4 461CC102 */  mul.s      $ft0, $fs2, $fs4
    /* 1E8E8 8001DCE8 00000000 */  nop
    /* 1E8EC 8001DCEC 461AC182 */  mul.s      $ft1, $fs2, $fs3
    /* 1E8F0 8001DCF0 00000000 */  nop
    /* 1E8F4 8001DCF4 461EA202 */  mul.s      $ft2, $fs0, $fs5
    /* 1E8F8 8001DCF8 46045381 */  sub.s      $fa1, $ft3, $ft0
    /* 1E8FC 8001DCFC 461CA282 */  mul.s      $ft3, $fs0, $fs4
    /* 1E900 8001DD00 00000000 */  nop
    /* 1E904 8001DD04 461AB102 */  mul.s      $ft0, $fs1, $fs3
    /* 1E908 8001DD08 E7AE006C */  swc1       $fa1, 0x6C($sp)
    /* 1E90C 8001DD0C 46083401 */  sub.s      $ft4, $ft1, $ft2
    /* 1E910 8001DD10 460E7182 */  mul.s      $ft1, $fa1, $fa1
    /* 1E914 8001DD14 00000000 */  nop
    /* 1E918 8001DD18 46108202 */  mul.s      $ft2, $ft4, $ft4
    /* 1E91C 8001DD1C E7B00070 */  swc1       $ft4, 0x70($sp)
    /* 1E920 8001DD20 46045481 */  sub.s      $ft5, $ft3, $ft0
    /* 1E924 8001DD24 46129102 */  mul.s      $ft0, $ft5, $ft5
    /* 1E928 8001DD28 46083280 */  add.s      $ft3, $ft1, $ft2
    /* 1E92C 8001DD2C E7B20074 */  swc1       $ft5, 0x74($sp)
    /* 1E930 8001DD30 0C007650 */  jal        func_8001D940
    /* 1E934 8001DD34 46045300 */   add.s     $fa0, $ft3, $ft0
    /* 1E938 8001DD38 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
    /* 1E93C 8001DD3C 44813800 */  mtc1       $at, $ft1f
    /* 1E940 8001DD40 44803000 */  mtc1       $zero, $ft1
    /* 1E944 8001DD44 46000221 */  cvt.d.s    $ft2, $fv0
    /* 1E948 8001DD48 C7AE006C */  lwc1       $fa1, 0x6C($sp)
    /* 1E94C 8001DD4C 46283283 */  div.d      $ft3, $ft1, $ft2
    /* 1E950 8001DD50 C7AC0070 */  lwc1       $fa0, 0x70($sp)
    /* 1E954 8001DD54 C7A40074 */  lwc1       $ft0, 0x74($sp)
    /* 1E958 8001DD58 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1E95C 8001DD5C 462050A0 */  cvt.s.d    $fv1, $ft3
    /* 1E960 8001DD60 46027382 */  mul.s      $fa1, $fa1, $fv1
    /* 1E964 8001DD64 00000000 */  nop
    /* 1E968 8001DD68 46026302 */  mul.s      $fa0, $fa0, $fv1
    /* 1E96C 8001DD6C 00000000 */  nop
    /* 1E970 8001DD70 46022182 */  mul.s      $ft1, $ft0, $fv1
    /* 1E974 8001DD74 E7A60074 */  swc1       $ft1, 0x74($sp)
    /* 1E978 8001DD78 E61A0000 */  swc1       $fs3, 0x0($s0)
    /* 1E97C 8001DD7C E61C0010 */  swc1       $fs4, 0x10($s0)
    /* 1E980 8001DD80 E61E0020 */  swc1       $fs5, 0x20($s0)
    /* 1E984 8001DD84 C7A80054 */  lwc1       $ft2, 0x54($sp)
    /* 1E988 8001DD88 C7A40058 */  lwc1       $ft0, 0x58($sp)
    /* 1E98C 8001DD8C 461A4282 */  mul.s      $ft3, $ft2, $fs3
    /* 1E990 8001DD90 00000000 */  nop
    /* 1E994 8001DD94 461C2182 */  mul.s      $ft1, $ft0, $fs4
    /* 1E998 8001DD98 C7A4005C */  lwc1       $ft0, 0x5C($sp)
    /* 1E99C 8001DD9C E60E0004 */  swc1       $fa1, 0x4($s0)
    /* 1E9A0 8001DDA0 E60C0014 */  swc1       $fa0, 0x14($s0)
    /* 1E9A4 8001DDA4 46065200 */  add.s      $ft2, $ft3, $ft1
    /* 1E9A8 8001DDA8 461E2282 */  mul.s      $ft3, $ft0, $fs5
    /* 1E9AC 8001DDAC 460A4180 */  add.s      $ft1, $ft2, $ft3
    /* 1E9B0 8001DDB0 46003107 */  neg.s      $ft0, $ft1
    /* 1E9B4 8001DDB4 E6040030 */  swc1       $ft0, 0x30($s0)
    /* 1E9B8 8001DDB8 C7A00074 */  lwc1       $fv0, 0x74($sp)
    /* 1E9BC 8001DDBC E7AC0070 */  swc1       $fa0, 0x70($sp)
    /* 1E9C0 8001DDC0 E7AE006C */  swc1       $fa1, 0x6C($sp)
    /* 1E9C4 8001DDC4 C7AE0054 */  lwc1       $fa1, 0x54($sp)
    /* 1E9C8 8001DDC8 C7AC0058 */  lwc1       $fa0, 0x58($sp)
    /* 1E9CC 8001DDCC C7A2005C */  lwc1       $fv1, 0x5C($sp)
    /* 1E9D0 8001DDD0 E6000024 */  swc1       $fv0, 0x24($s0)
    /* 1E9D4 8001DDD4 C7A8006C */  lwc1       $ft2, 0x6C($sp)
    /* 1E9D8 8001DDD8 C7A60070 */  lwc1       $ft1, 0x70($sp)
    /* 1E9DC 8001DDDC E6140008 */  swc1       $fs0, 0x8($s0)
    /* 1E9E0 8001DDE0 46087282 */  mul.s      $ft3, $fa1, $ft2
    /* 1E9E4 8001DDE4 E6160018 */  swc1       $fs1, 0x18($s0)
    /* 1E9E8 8001DDE8 E6180028 */  swc1       $fs2, 0x28($s0)
    /* 1E9EC 8001DDEC 46066102 */  mul.s      $ft0, $fa0, $ft1
    /* 1E9F0 8001DDF0 46045200 */  add.s      $ft2, $ft3, $ft0
    /* 1E9F4 8001DDF4 46001182 */  mul.s      $ft1, $fv1, $fv0
    /* 1E9F8 8001DDF8 44800000 */  mtc1       $zero, $fv0
    /* 1E9FC 8001DDFC 00000000 */  nop
    /* 1EA00 8001DE00 E600000C */  swc1       $fv0, 0xC($s0)
    /* 1EA04 8001DE04 E600001C */  swc1       $fv0, 0x1C($s0)
    /* 1EA08 8001DE08 E600002C */  swc1       $fv0, 0x2C($s0)
    /* 1EA0C 8001DE0C 46064280 */  add.s      $ft3, $ft2, $ft1
    /* 1EA10 8001DE10 46147202 */  mul.s      $ft2, $fa1, $fs0
    /* 1EA14 8001DE14 00000000 */  nop
    /* 1EA18 8001DE18 46166182 */  mul.s      $ft1, $fa0, $fs1
    /* 1EA1C 8001DE1C 46005107 */  neg.s      $ft0, $ft3
    /* 1EA20 8001DE20 E6040034 */  swc1       $ft0, 0x34($s0)
    /* 1EA24 8001DE24 46181102 */  mul.s      $ft0, $fv1, $fs2
    /* 1EA28 8001DE28 46064280 */  add.s      $ft3, $ft2, $ft1
    /* 1EA2C 8001DE2C 46045200 */  add.s      $ft2, $ft3, $ft0
    /* 1EA30 8001DE30 44815000 */  mtc1       $at, $ft3
    /* 1EA34 8001DE34 46004187 */  neg.s      $ft1, $ft2
    /* 1EA38 8001DE38 E60A003C */  swc1       $ft3, 0x3C($s0)
    /* 1EA3C 8001DE3C E6060038 */  swc1       $ft1, 0x38($s0)
    /* 1EA40 8001DE40 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 1EA44 8001DE44 8FB00048 */  lw         $s0, 0x48($sp)
    /* 1EA48 8001DE48 D7BE0040 */  ldc1       $fs5, 0x40($sp)
    /* 1EA4C 8001DE4C D7BC0038 */  ldc1       $fs4, 0x38($sp)
    /* 1EA50 8001DE50 D7BA0030 */  ldc1       $fs3, 0x30($sp)
    /* 1EA54 8001DE54 D7B80028 */  ldc1       $fs2, 0x28($sp)
    /* 1EA58 8001DE58 D7B60020 */  ldc1       $fs1, 0x20($sp)
    /* 1EA5C 8001DE5C D7B40018 */  ldc1       $fs0, 0x18($sp)
    /* 1EA60 8001DE60 03E00008 */  jr         $ra
    /* 1EA64 8001DE64 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8001DE68
    /* 1EA68 8001DE68 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 1EA6C 8001DE6C C7A40080 */  lwc1       $ft0, 0x80($sp)
    /* 1EA70 8001DE70 44856000 */  mtc1       $a1, $fa0
    /* 1EA74 8001DE74 44867000 */  mtc1       $a2, $fa1
    /* 1EA78 8001DE78 44878000 */  mtc1       $a3, $ft4
    /* 1EA7C 8001DE7C E7A40010 */  swc1       $ft0, 0x10($sp)
    /* 1EA80 8001DE80 C7A40094 */  lwc1       $ft0, 0x94($sp)
    /* 1EA84 8001DE84 C7A60084 */  lwc1       $ft1, 0x84($sp)
    /* 1EA88 8001DE88 C7A80088 */  lwc1       $ft2, 0x88($sp)
    /* 1EA8C 8001DE8C C7AA008C */  lwc1       $ft3, 0x8C($sp)
    /* 1EA90 8001DE90 C7B20090 */  lwc1       $ft5, 0x90($sp)
    /* 1EA94 8001DE94 AFBF002C */  sw         $ra, 0x2C($sp)
    /* 1EA98 8001DE98 AFA40070 */  sw         $a0, 0x70($sp)
    /* 1EA9C 8001DE9C 44056000 */  mfc1       $a1, $fa0
    /* 1EAA0 8001DEA0 44067000 */  mfc1       $a2, $fa1
    /* 1EAA4 8001DEA4 44078000 */  mfc1       $a3, $ft4
    /* 1EAA8 8001DEA8 27A40030 */  addiu      $a0, $sp, 0x30
    /* 1EAAC 8001DEAC E7A40024 */  swc1       $ft0, 0x24($sp)
    /* 1EAB0 8001DEB0 E7A60014 */  swc1       $ft1, 0x14($sp)
    /* 1EAB4 8001DEB4 E7A80018 */  swc1       $ft2, 0x18($sp)
    /* 1EAB8 8001DEB8 E7AA001C */  swc1       $ft3, 0x1C($sp)
    /* 1EABC 8001DEBC 0C0076EC */  jal        func_8001DBB0
    /* 1EAC0 8001DEC0 E7B20020 */   swc1      $ft5, 0x20($sp)
    /* 1EAC4 8001DEC4 27A40030 */  addiu      $a0, $sp, 0x30
    /* 1EAC8 8001DEC8 0C009FA4 */  jal        func_80027E90
    /* 1EACC 8001DECC 8FA50070 */   lw        $a1, 0x70($sp)
    /* 1EAD0 8001DED0 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 1EAD4 8001DED4 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 1EAD8 8001DED8 03E00008 */  jr         $ra
    /* 1EADC 8001DEDC 00000000 */   nop

glabel func_8001DEE0
    /* 1EAE0 8001DEE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1EAE4 8001DEE4 3C018004 */  lui        $at, %hi(D_80039870)
    /* 1EAE8 8001DEE8 C4249870 */  lwc1       $ft0, %lo(D_80039870)($at)
    /* 1EAEC 8001DEEC AFB00018 */  sw         $s0, 0x18($sp)
    /* 1EAF0 8001DEF0 00808025 */  or         $s0, $a0, $zero
    /* 1EAF4 8001DEF4 3C018007 */  lui        $at, %hi(D_8006CA50)
    /* 1EAF8 8001DEF8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1EAFC 8001DEFC AFA5003C */  sw         $a1, 0x3C($sp)
    /* 1EB00 8001DF00 AFA60040 */  sw         $a2, 0x40($sp)
    /* 1EB04 8001DF04 AFA70044 */  sw         $a3, 0x44($sp)
    /* 1EB08 8001DF08 27A60048 */  addiu      $a2, $sp, 0x48
    /* 1EB0C 8001DF0C 27A50044 */  addiu      $a1, $sp, 0x44
    /* 1EB10 8001DF10 27A40040 */  addiu      $a0, $sp, 0x40
    /* 1EB14 8001DF14 0C00A040 */  jal        func_80028100
    /* 1EB18 8001DF18 E424CA50 */   swc1      $ft0, %lo(D_8006CA50)($at)
    /* 1EB1C 8001DF1C 3C018007 */  lui        $at, %hi(D_8006CA50)
    /* 1EB20 8001DF20 C7AC003C */  lwc1       $fa0, 0x3C($sp)
    /* 1EB24 8001DF24 C426CA50 */  lwc1       $ft1, %lo(D_8006CA50)($at)
    /* 1EB28 8001DF28 46066302 */  mul.s      $fa0, $fa0, $ft1
    /* 1EB2C 8001DF2C 0C00797C */  jal        func_8001E5F0
    /* 1EB30 8001DF30 E7AC003C */   swc1      $fa0, 0x3C($sp)
    /* 1EB34 8001DF34 C7AC003C */  lwc1       $fa0, 0x3C($sp)
    /* 1EB38 8001DF38 0C0079EC */  jal        func_8001E7B0
    /* 1EB3C 8001DF3C E7A00034 */   swc1      $fv0, 0x34($sp)
    /* 1EB40 8001DF40 C7AA0040 */  lwc1       $ft3, 0x40($sp)
    /* 1EB44 8001DF44 C7A40044 */  lwc1       $ft0, 0x44($sp)
    /* 1EB48 8001DF48 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1EB4C 8001DF4C 44814000 */  mtc1       $at, $ft2
    /* 1EB50 8001DF50 46045182 */  mul.s      $ft1, $ft3, $ft0
    /* 1EB54 8001DF54 02002025 */  or         $a0, $s0, $zero
    /* 1EB58 8001DF58 46004081 */  sub.s      $fv1, $ft2, $fv0
    /* 1EB5C 8001DF5C C7A80048 */  lwc1       $ft2, 0x48($sp)
    /* 1EB60 8001DF60 E7A00030 */  swc1       $fv0, 0x30($sp)
    /* 1EB64 8001DF64 46023402 */  mul.s      $ft4, $ft1, $fv1
    /* 1EB68 8001DF68 00000000 */  nop
    /* 1EB6C 8001DF6C 46082182 */  mul.s      $ft1, $ft0, $ft2
    /* 1EB70 8001DF70 E7B0002C */  swc1       $ft4, 0x2C($sp)
    /* 1EB74 8001DF74 46023482 */  mul.s      $ft5, $ft1, $fv1
    /* 1EB78 8001DF78 00000000 */  nop
    /* 1EB7C 8001DF7C 460A4102 */  mul.s      $ft0, $ft2, $ft3
    /* 1EB80 8001DF80 E7B20028 */  swc1       $ft5, 0x28($sp)
    /* 1EB84 8001DF84 46022182 */  mul.s      $ft1, $ft0, $fv1
    /* 1EB88 8001DF88 0C009FE4 */  jal        func_80027F90
    /* 1EB8C 8001DF8C E7A60024 */   swc1      $ft1, 0x24($sp)
    /* 1EB90 8001DF90 C7A80040 */  lwc1       $ft2, 0x40($sp)
    /* 1EB94 8001DF94 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 1EB98 8001DF98 44815000 */  mtc1       $at, $ft3
    /* 1EB9C 8001DF9C 46084002 */  mul.s      $fv0, $ft2, $ft2
    /* 1EBA0 8001DFA0 C7AC0030 */  lwc1       $fa0, 0x30($sp)
    /* 1EBA4 8001DFA4 C7AE0034 */  lwc1       $fa1, 0x34($sp)
    /* 1EBA8 8001DFA8 C7B0002C */  lwc1       $ft4, 0x2C($sp)
    /* 1EBAC 8001DFAC C7B20028 */  lwc1       $ft5, 0x28($sp)
    /* 1EBB0 8001DFB0 46005101 */  sub.s      $ft0, $ft3, $fv0
    /* 1EBB4 8001DFB4 460C2182 */  mul.s      $ft1, $ft0, $fa0
    /* 1EBB8 8001DFB8 46003200 */  add.s      $ft2, $ft1, $fv0
    /* 1EBBC 8001DFBC E6080000 */  swc1       $ft2, 0x0($s0)
    /* 1EBC0 8001DFC0 C7AA0040 */  lwc1       $ft3, 0x40($sp)
    /* 1EBC4 8001DFC4 460E5102 */  mul.s      $ft0, $ft3, $fa1
    /* 1EBC8 8001DFC8 46049181 */  sub.s      $ft1, $ft5, $ft0
    /* 1EBCC 8001DFCC E6060024 */  swc1       $ft1, 0x24($s0)
    /* 1EBD0 8001DFD0 C7A80040 */  lwc1       $ft2, 0x40($sp)
    /* 1EBD4 8001DFD4 460E4282 */  mul.s      $ft3, $ft2, $fa1
    /* 1EBD8 8001DFD8 44814000 */  mtc1       $at, $ft2
    /* 1EBDC 8001DFDC 46125100 */  add.s      $ft0, $ft3, $ft5
    /* 1EBE0 8001DFE0 E6040018 */  swc1       $ft0, 0x18($s0)
    /* 1EBE4 8001DFE4 C7A60044 */  lwc1       $ft1, 0x44($sp)
    /* 1EBE8 8001DFE8 46063082 */  mul.s      $fv1, $ft1, $ft1
    /* 1EBEC 8001DFEC 46024281 */  sub.s      $ft3, $ft2, $fv1
    /* 1EBF0 8001DFF0 460C5102 */  mul.s      $ft0, $ft3, $fa0
    /* 1EBF4 8001DFF4 46022180 */  add.s      $ft1, $ft0, $fv1
    /* 1EBF8 8001DFF8 E6060014 */  swc1       $ft1, 0x14($s0)
    /* 1EBFC 8001DFFC C7A80044 */  lwc1       $ft2, 0x44($sp)
    /* 1EC00 8001E000 C7A40024 */  lwc1       $ft0, 0x24($sp)
    /* 1EC04 8001E004 460E4282 */  mul.s      $ft3, $ft2, $fa1
    /* 1EC08 8001E008 46045180 */  add.s      $ft1, $ft3, $ft0
    /* 1EC0C 8001E00C E6060020 */  swc1       $ft1, 0x20($s0)
    /* 1EC10 8001E010 C7AA0044 */  lwc1       $ft3, 0x44($sp)
    /* 1EC14 8001E014 C7A80024 */  lwc1       $ft2, 0x24($sp)
    /* 1EC18 8001E018 460E5102 */  mul.s      $ft0, $ft3, $fa1
    /* 1EC1C 8001E01C 46044181 */  sub.s      $ft1, $ft2, $ft0
    /* 1EC20 8001E020 44814000 */  mtc1       $at, $ft2
    /* 1EC24 8001E024 E6060008 */  swc1       $ft1, 0x8($s0)
    /* 1EC28 8001E028 C7AA0048 */  lwc1       $ft3, 0x48($sp)
    /* 1EC2C 8001E02C 460A5002 */  mul.s      $fv0, $ft3, $ft3
    /* 1EC30 8001E030 46004101 */  sub.s      $ft0, $ft2, $fv0
    /* 1EC34 8001E034 460C2182 */  mul.s      $ft1, $ft0, $fa0
    /* 1EC38 8001E038 46003280 */  add.s      $ft3, $ft1, $fv0
    /* 1EC3C 8001E03C E60A0028 */  swc1       $ft3, 0x28($s0)
    /* 1EC40 8001E040 C7A80048 */  lwc1       $ft2, 0x48($sp)
    /* 1EC44 8001E044 460E4102 */  mul.s      $ft0, $ft2, $fa1
    /* 1EC48 8001E048 46048181 */  sub.s      $ft1, $ft4, $ft0
    /* 1EC4C 8001E04C E6060010 */  swc1       $ft1, 0x10($s0)
    /* 1EC50 8001E050 C7AA0048 */  lwc1       $ft3, 0x48($sp)
    /* 1EC54 8001E054 460E5202 */  mul.s      $ft2, $ft3, $fa1
    /* 1EC58 8001E058 46104100 */  add.s      $ft0, $ft2, $ft4
    /* 1EC5C 8001E05C E6040004 */  swc1       $ft0, 0x4($s0)
    /* 1EC60 8001E060 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1EC64 8001E064 8FB00018 */  lw         $s0, 0x18($sp)
    /* 1EC68 8001E068 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 1EC6C 8001E06C 03E00008 */  jr         $ra
    /* 1EC70 8001E070 00000000 */   nop

glabel func_8001E074
    /* 1EC74 8001E074 44856000 */  mtc1       $a1, $fa0
    /* 1EC78 8001E078 44867000 */  mtc1       $a2, $fa1
    /* 1EC7C 8001E07C 44878000 */  mtc1       $a3, $ft4
    /* 1EC80 8001E080 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 1EC84 8001E084 C7A40070 */  lwc1       $ft0, 0x70($sp)
    /* 1EC88 8001E088 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1EC8C 8001E08C AFA40060 */  sw         $a0, 0x60($sp)
    /* 1EC90 8001E090 44056000 */  mfc1       $a1, $fa0
    /* 1EC94 8001E094 44067000 */  mfc1       $a2, $fa1
    /* 1EC98 8001E098 44078000 */  mfc1       $a3, $ft4
    /* 1EC9C 8001E09C 27A40020 */  addiu      $a0, $sp, 0x20
    /* 1ECA0 8001E0A0 0C0077B8 */  jal        func_8001DEE0
    /* 1ECA4 8001E0A4 E7A40010 */   swc1      $ft0, 0x10($sp)
    /* 1ECA8 8001E0A8 27A40020 */  addiu      $a0, $sp, 0x20
    /* 1ECAC 8001E0AC 0C009FA4 */  jal        func_80027E90
    /* 1ECB0 8001E0B0 8FA50060 */   lw        $a1, 0x60($sp)
    /* 1ECB4 8001E0B4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1ECB8 8001E0B8 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 1ECBC 8001E0BC 03E00008 */  jr         $ra
    /* 1ECC0 8001E0C0 00000000 */   nop
    /* 1ECC4 8001E0C4 00000000 */  nop
    /* 1ECC8 8001E0C8 00000000 */  nop
    /* 1ECCC 8001E0CC 00000000 */  nop
