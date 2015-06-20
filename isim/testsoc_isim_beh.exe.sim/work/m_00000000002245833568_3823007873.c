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
static const char *ng0 = "E:/code/hardware/MIPSAPP/top.v";
static int ng1[] = {3, 0};
static int ng2[] = {2, 0};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {15U, 0U};



static void Always_109_0(char *t0)
{
    char t11[8];
    char t15[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;

LAB0:    t1 = (t0 + 4296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 5212);
    *((int *)t2) = 1;
    t3 = (t0 + 4324);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(109, ng0);

LAB5:    xsi_set_current_line(110, ng0);
    t4 = (t0 + 2716U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(114, ng0);

LAB10:    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3588);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3772);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(110, ng0);

LAB9:    xsi_set_current_line(111, ng0);
    t12 = ((char*)((ng1)));
    t13 = (t0 + 1244U);
    t14 = *((char **)t13);
    t13 = (t0 + 1220U);
    t16 = (t13 + 44U);
    t17 = *((char **)t16);
    t19 = (t0 + 968U);
    t20 = *((char **)t19);
    memset(t18, 0, 8);
    t19 = (t18 + 4);
    t21 = (t20 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (t22 >> 0);
    *((unsigned int *)t18) = t23;
    t24 = *((unsigned int *)t21);
    t25 = (t24 >> 0);
    *((unsigned int *)t19) = t25;
    t26 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t26 & 7U);
    t27 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t27 & 7U);
    xsi_vlog_generic_get_index_select_value(t15, 1, t14, t17, 2, t18, 3, 2);
    xsi_vlog_mul_concat(t11, 3, 1, t12, 1U, t15, 1);
    t28 = (t0 + 3588);
    xsi_vlogvar_wait_assign_value(t28, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1244U);
    t4 = *((char **)t3);
    t3 = (t0 + 1220U);
    t5 = (t3 + 44U);
    t12 = *((char **)t5);
    t13 = (t0 + 968U);
    t14 = *((char **)t13);
    memset(t18, 0, 8);
    t13 = (t18 + 4);
    t16 = (t14 + 4);
    t6 = *((unsigned int *)t14);
    t7 = (t6 >> 0);
    *((unsigned int *)t18) = t7;
    t8 = *((unsigned int *)t16);
    t9 = (t8 >> 0);
    *((unsigned int *)t13) = t9;
    t10 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t10 & 7U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 7U);
    xsi_vlog_generic_get_index_select_value(t15, 1, t4, t12, 2, t18, 3, 2);
    xsi_vlog_mul_concat(t11, 3, 1, t2, 1U, t15, 1);
    t17 = (t0 + 3680);
    xsi_vlogvar_wait_assign_value(t17, t11, 0, 0, 3, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1244U);
    t4 = *((char **)t3);
    t3 = (t0 + 1220U);
    t5 = (t3 + 44U);
    t12 = *((char **)t5);
    t13 = (t0 + 968U);
    t14 = *((char **)t13);
    memset(t18, 0, 8);
    t13 = (t18 + 4);
    t16 = (t14 + 4);
    t6 = *((unsigned int *)t14);
    t7 = (t6 >> 0);
    *((unsigned int *)t18) = t7;
    t8 = *((unsigned int *)t16);
    t9 = (t8 >> 0);
    *((unsigned int *)t13) = t9;
    t10 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t10 & 7U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 7U);
    xsi_vlog_generic_get_index_select_value(t15, 1, t4, t12, 2, t18, 3, 2);
    xsi_vlog_mul_concat(t11, 2, 1, t2, 1U, t15, 1);
    t17 = (t0 + 3772);
    xsi_vlogvar_wait_assign_value(t17, t11, 0, 0, 2, 0LL);
    goto LAB8;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 5256);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng4)));
    t3 = (t0 + 5292);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}

static void implSig3_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 4728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng5)));
    t3 = (t0 + 5328);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 127U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 6);

LAB1:    return;
}

static void implSig4_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 5364);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}

static void implSig5_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 5016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 5400);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}


extern void work_m_00000000002245833568_3823007873_init()
{
	static char *pe[] = {(void *)Always_109_0,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute,(void *)implSig4_execute,(void *)implSig5_execute};
	xsi_register_didat("work_m_00000000002245833568_3823007873", "isim/testsoc_isim_beh.exe.sim/work/m_00000000002245833568_3823007873.didat");
	xsi_register_executes(pe);
}
