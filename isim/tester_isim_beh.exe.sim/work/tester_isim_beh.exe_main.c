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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002597790088_3560757943_init();
    work_m_00000000001612584036_3634697670_init();
    work_m_00000000002896719721_2582214024_init();
    work_m_00000000000176448244_3441908085_init();
    work_m_00000000003624997833_1228269748_init();
    work_m_00000000003548466021_2613777659_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003548466021_2613777659");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
