/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/pastika/Xilinx/test/HF_ngCCM_Control_Emulator_V2/counter.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {3563U, 0U};
static unsigned int ng5[] = {127U, 0U};



static void Always_26_0(char *t0)
{
    char t6[8];
    char t21[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;

LAB0:    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2076);
    *((int *)t2) = 1;
    t3 = (t0 + 1908);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 944U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB5;

LAB6:    if (*((unsigned int *)t4) != 0)
        goto LAB7;

LAB8:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = (!(t14));
    t16 = *((unsigned int *)t13);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB9;

LAB10:    memcpy(t29, t6, 8);

LAB11:    t57 = (t29 + 4);
    t58 = *((unsigned int *)t57);
    t59 = (~(t58));
    t60 = *((unsigned int *)t29);
    t61 = (t60 & t59);
    t62 = (t61 != 0);
    if (t62 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 760U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB23;

LAB24:
LAB25:
LAB21:    goto LAB2;

LAB5:    *((unsigned int *)t6) = 1;
    goto LAB8;

LAB7:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB8;

LAB9:    t18 = (t0 + 1264);
    t19 = (t18 + 36U);
    t20 = *((char **)t19);
    memset(t21, 0, 8);
    t22 = (t20 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t20);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t22) != 0)
        goto LAB14;

LAB15:    t30 = *((unsigned int *)t6);
    t31 = *((unsigned int *)t21);
    t32 = (t30 | t31);
    *((unsigned int *)t29) = t32;
    t33 = (t6 + 4);
    t34 = (t21 + 4);
    t35 = (t29 + 4);
    t36 = *((unsigned int *)t33);
    t37 = *((unsigned int *)t34);
    t38 = (t36 | t37);
    *((unsigned int *)t35) = t38;
    t39 = *((unsigned int *)t35);
    t40 = (t39 != 0);
    if (t40 == 1)
        goto LAB16;

LAB17:
LAB18:    goto LAB11;

LAB12:    *((unsigned int *)t21) = 1;
    goto LAB15;

LAB14:    t28 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB15;

LAB16:    t41 = *((unsigned int *)t29);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t29) = (t41 | t42);
    t43 = (t6 + 4);
    t44 = (t21 + 4);
    t45 = *((unsigned int *)t43);
    t46 = (~(t45));
    t47 = *((unsigned int *)t6);
    t48 = (t47 & t46);
    t49 = *((unsigned int *)t44);
    t50 = (~(t49));
    t51 = *((unsigned int *)t21);
    t52 = (t51 & t50);
    t53 = (~(t48));
    t54 = (~(t52));
    t55 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t55 & t53);
    t56 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t56 & t54);
    goto LAB18;

LAB19:    xsi_set_current_line(28, ng0);

LAB22:    xsi_set_current_line(29, ng0);
    t63 = ((char*)((ng1)));
    t64 = (t0 + 1172);
    xsi_vlogvar_wait_assign_value(t64, t63, 0, 0, 12, 0LL);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1264);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB21;

LAB23:    xsi_set_current_line(33, ng0);

LAB26:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1172);
    t5 = (t4 + 36U);
    t12 = *((char **)t5);
    t13 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t12, 12, t13, 32);
    t18 = (t0 + 1172);
    xsi_vlogvar_wait_assign_value(t18, t6, 0, 0, 12, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1172);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t12 = (t4 + 4);
    t13 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t5);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t23 = (t16 | t17);
    t24 = (~(t23));
    t25 = (t15 & t24);
    if (t25 != 0)
        goto LAB30;

LAB27:    if (t23 != 0)
        goto LAB29;

LAB28:    *((unsigned int *)t6) = 1;

LAB30:    t19 = (t6 + 4);
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t30 = *((unsigned int *)t6);
    t31 = (t30 & t27);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB31;

LAB32:
LAB33:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1172);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t12 = (t4 + 4);
    t13 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = *((unsigned int *)t5);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t23 = (t16 | t17);
    t24 = (~(t23));
    t25 = (t15 & t24);
    if (t25 != 0)
        goto LAB37;

LAB34:    if (t23 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t6) = 1;

LAB37:    t19 = (t6 + 4);
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t30 = *((unsigned int *)t6);
    t31 = (t30 & t27);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB38;

LAB39:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1356);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB40:    goto LAB25;

LAB29:    t18 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB30;

LAB31:    xsi_set_current_line(36, ng0);
    t20 = ((char*)((ng1)));
    t22 = (t0 + 1264);
    xsi_vlogvar_wait_assign_value(t22, t20, 0, 0, 1, 0LL);
    goto LAB33;

LAB36:    t18 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(38, ng0);
    t20 = ((char*)((ng1)));
    t22 = (t0 + 1356);
    xsi_vlogvar_wait_assign_value(t22, t20, 0, 0, 1, 0LL);
    goto LAB40;

}


extern void work_m_00000000002896719721_2582214024_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_00000000002896719721_2582214024", "isim/tester_isim_beh.exe.sim/work/m_00000000002896719721_2582214024.didat");
	xsi_register_executes(pe);
}
