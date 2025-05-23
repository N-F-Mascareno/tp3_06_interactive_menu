/*
 * Copyright (c) 2023 Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 *
 * @file   : task_menu.c
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_menu_attribute.h"
#include "task_menu_interface.h"
#include "display.h"

/********************** macros and definitions *******************************/
#define G_TASK_MEN_CNT_INI			0ul
#define G_TASK_MEN_TICK_CNT_INI		0ul

#define DEL_MEN_XX_MIN				0ul
#define DEL_MEN_XX_MED				50ul
#define DEL_MEN_XX_MAX				500ul
#define DEL_MEN_SAVE                100ul

/********************** internal data declaration ****************************/
task_menu_dta_t task_menu_dta =
	{DEL_MEN_XX_MIN, ST_MEN_MAIN, EV_MEN_ENT_IDLE, false};


#define MENU_DTA_QTY	(sizeof(task_menu_dta)/sizeof(task_menu_dta_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_task_menu 		= "Task Menu (Interactive Menu)";
const char *p_task_menu_ 		= "Non-Blocking & Update By Time Code";

task_motor_dta_t motor_1 = {ID_MOTOR_1, OFF, 0, LEFT};
task_motor_dta_t motor_2 = {ID_MOTOR_2, OFF, 0, LEFT};

char *motor_list[] = {"MOTOR 1","MOTOR 2"};
char *power_list[] = {"ON","OFF"};
char *spin_list[] = {"L","R"};

char motor = 0;
char aux_speed = 0;
char aux_spin = LEFT;
char aux_power = ON;

/********************** external data declaration ****************************/
uint32_t g_task_menu_cnt;
volatile uint32_t g_task_menu_tick_cnt;

/********************** external functions definition ************************/
void task_menu_init(void *parameters)
{
	task_menu_dta_t *p_task_menu_dta;
	task_menu_st_t	state;
	task_menu_ev_t	event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_menu_init), p_task_menu);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_menu), p_task_menu_);

	g_task_menu_cnt = G_TASK_MEN_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_menu_cnt), g_task_menu_cnt);

	init_queue_event_task_menu();

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_menu_dta = &task_menu_dta;

	/* Print out: Task execution FSM */
	state = p_task_menu_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

	event = p_task_menu_dta->event;
	LOGGER_LOG("   %s = %lu", GET_NAME(event), (uint32_t)event);

	b_event = p_task_menu_dta->flag;
	LOGGER_LOG("   %s = %s\r\n", GET_NAME(b_event), (b_event ? "true" : "false"));

	cycle_counter_init();
	cycle_counter_reset();

	displayInit( DISPLAY_CONNECTION_GPIO_4BITS );

    displayCharPositionWrite(0, 0);
	displayStringWrite("Motor 1: ON 0 L");
	displayCharPositionWrite(0, 1);
	displayStringWrite("Motor 2: ON 0 L");

	g_task_menu_tick_cnt = G_TASK_MEN_TICK_CNT_INI;
}

//MOVER DE ACA
void task_display_refresh(void) {
	char menu_str[16] = "                ";
	displayCharPositionWrite(0, 0);
	displayStringWrite(menu_str);
	displayCharPositionWrite(0, 1);
	displayStringWrite(menu_str);
}

void task_display_main(void) {
	char menu_str[16];
	sprintf(menu_str, "%s: %s %d %s",
	            motor_list[motor_1.motor_id],
	            power_list[motor_1.Power],
	            motor_1.Speed,
	            spin_list[motor_1.Spin]);
	displayCharPositionWrite(0, 0);
	displayStringWrite(menu_str);

	sprintf(menu_str, "%s: %s %d %s",
	            motor_list[motor_2.motor_id],
	            power_list[motor_2.Power],
	            motor_2.Speed,
	            spin_list[motor_2.Spin]);
	displayCharPositionWrite(0, 1);
	displayStringWrite(menu_str);

}

void task_display_menu_1(task_motor_id_t motor) {
	char menu_str[20];
	task_display_refresh();
	//displayCodeWrite(DISPLAY_RS_INSTRUCTION, DISPLAY_IR_CLEAR_DISPLAY);
	//HAL_Delay(1);
	//"    MOTOR 1     "
	sprintf(menu_str,"    %s     ",motor_list[motor]);
	displayCharPositionWrite(0, 0);
	displayStringWrite(menu_str);
}
/////////////////////////////////////////////////////////////////////////////////////////////

void task_menu_update(void *parameters)
{
	task_menu_dta_t *p_task_menu_dta;
	bool b_time_update_required = false;
	char menu_str[20];

	/* Update Task Menu Counter */
	g_task_menu_cnt++;

	/* Protect shared resource (g_task_menu_tick) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_MEN_TICK_CNT_INI < g_task_menu_tick_cnt)
    {
    	g_task_menu_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required)
    {
		/* Protect shared resource (g_task_menu_tick) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_MEN_TICK_CNT_INI < g_task_menu_tick_cnt)
		{
			g_task_menu_tick_cnt--;
			b_time_update_required = true;
		}
		else
		{
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	/* Update Task Menu Data Pointer */
		p_task_menu_dta = &task_menu_dta;

    	if (DEL_MEN_XX_MIN < p_task_menu_dta->tick)
		{
			p_task_menu_dta->tick--;
		}
		else
		{
			p_task_menu_dta->tick = DEL_MEN_XX_MAX;

			if (true == any_event_task_menu())
			{
				p_task_menu_dta->flag = true;
				p_task_menu_dta->event = get_event_task_menu();
			}

			switch (p_task_menu_dta->state)
			{
				/*case ST_MEN_XX_IDLE:

					if ((true == p_task_menu_dta->flag) && (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event))
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_XX_ACTIVE;
					}

					break;

				case ST_MEN_XX_ACTIVE:

					if ((true == p_task_menu_dta->flag) && (EV_MEN_ENT_IDLE == p_task_menu_dta->event))
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_XX_IDLE;
					}

					break;

				default:

					p_task_menu_dta->tick  = DEL_MEN_XX_MIN;
					p_task_menu_dta->state = ST_MEN_XX_IDLE;
					p_task_menu_dta->event = EV_MEN_ENT_IDLE;
					p_task_menu_dta->flag  = false;

					break;
					*/
				case ST_MEN_MAIN:

					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						motor = 0;
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M1;
						task_display_menu_1(motor);
					}
					break;

				case ST_MEN_01_M1:
					motor = 0;
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_POWER;
						//displayCodeWrite(DISPLAY_RS_INSTRUCTION, DISPLAY_IR_CLEAR_DISPLAY);
						//HAL_Delay(1);
						displayCharPositionWrite(0, 0);
						displayStringWrite("     POWER     ");
					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M2;
						motor = ID_MOTOR_2;
						task_display_menu_1(motor);

					}
					else if(EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_MAIN;
						task_display_main();
					}
					break;


				case ST_MEN_01_M2:
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_POWER;
						displayCharPositionWrite(0, 0);
						displayStringWrite("     POWER     ");
					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M1;
						motor = ID_MOTOR_1;
						task_display_menu_1(motor);
					}
					else if(EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_MAIN;
						task_display_main();
					}
					break;

				case ST_MEN_02_POWER:
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_03_POWER_ON;
						displayCharPositionWrite(0, 0);
						displayStringWrite("       ON       ");
					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_SPEED;
						displayCharPositionWrite(0, 0);
						displayStringWrite("      SPEED     ");
					}
					else if((EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) && (motor == ID_MOTOR_1)) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M1;
						task_display_menu_1(motor);
					}
					else if((EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) && (motor == ID_MOTOR_2)) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M2;
						task_display_menu_1(motor);
					}
					break;

				case ST_MEN_02_SPEED:
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_03_SPEED;
						sprintf(menu_str,"       %d        ",aux_speed);
						displayCharPositionWrite(0, 0);
						displayStringWrite(menu_str);

					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_SPIN;
						displayCharPositionWrite(0, 0);
						displayStringWrite("      SPIN      ");

					}
					else if((EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) && (motor == ID_MOTOR_1)) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M1;
						task_display_menu_1(motor);
					}
					else if((EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) && (motor == ID_MOTOR_2)) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M2;
						task_display_menu_1(motor);
					}
					break;

				case ST_MEN_02_SPIN:
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_03_SPIN_LEFT;
						displayCharPositionWrite(0, 0);
						displayStringWrite("      LEFT      ");

					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_POWER;
						displayCharPositionWrite(0, 0);
						displayStringWrite("     POWER     ");
					}
					else if((EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) && (motor == ID_MOTOR_1)) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M1;
						task_display_menu_1(motor);
					}
					else if((EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) && (motor == ID_MOTOR_2)) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_01_M2;
						task_display_menu_1(motor);
					}
					break;

				case ST_MEN_03_POWER_ON:
					if(!p_task_menu_dta->flag) break;

					if ((EV_MEN_ENT_ACTIVE == p_task_menu_dta->event) && motor == ID_MOTOR_1)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_VARIABLES_SAVED;
						p_task_menu_dta->tick = DEL_MEN_SAVE;
						if(motor == ID_MOTOR_1) {
							motor_1.Power = ON;
						}
						else motor_2.Power = ON;
						displayCharPositionWrite(0, 0);
						displayStringWrite("VARIABLES SAVED!");


					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_03_POWER_OFF;
						displayCharPositionWrite(0, 0);
						displayStringWrite("      OFF       ");
					}
					else if(EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_POWER;
						displayCharPositionWrite(0, 0);
						displayStringWrite("     POWER     ");
					}
					break;

				case ST_MEN_03_POWER_OFF:
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_VARIABLES_SAVED;
						p_task_menu_dta->tick = DEL_MEN_SAVE;
						if(motor == ID_MOTOR_1) {
							motor_1.Power = OFF;
						}
						else motor_2.Power = OFF;
						displayCharPositionWrite(0, 0);
						displayStringWrite("VARIABLES SAVED!");

					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_03_POWER_ON;
						displayCharPositionWrite(0, 0);
						displayStringWrite("       ON       ");
					}
					else if(EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_POWER;
						displayCharPositionWrite(0, 0);
						displayStringWrite("     POWER     ");
					}
					break;

				case ST_MEN_03_SPEED:
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_VARIABLES_SAVED;
						p_task_menu_dta->tick = DEL_MEN_SAVE;
						if(motor == ID_MOTOR_1) {
							motor_1.Speed = aux_speed;
						}
						else motor_2.Speed = aux_speed;
						displayCharPositionWrite(0, 0);
						displayStringWrite("VARIABLES SAVED!");
					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_03_SPEED;
						if(aux_speed > 9) aux_speed = 0;
						else aux_speed++;
						sprintf(menu_str,"       %d        ",aux_speed);
						displayCharPositionWrite(0, 0);
						displayStringWrite(menu_str);

					}
					else if(EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_SPEED;
						displayCharPositionWrite(0, 0);
						displayStringWrite("      SPEED     ");
					}
					break;

				case ST_MEN_03_SPIN_LEFT:
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_VARIABLES_SAVED;
						p_task_menu_dta->tick = DEL_MEN_SAVE;
						if(motor == ID_MOTOR_1) {
							motor_1.Spin = LEFT;
						}
						else motor_2.Spin = LEFT;
						displayCharPositionWrite(0, 0);
						displayStringWrite("VARIABLES SAVED!");
					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_03_SPIN_RIGTH;
						displayCharPositionWrite(0, 0);
						displayStringWrite("     RIGHT      ");
					}
					else if(EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_SPIN;
						displayCharPositionWrite(0, 0);
						displayStringWrite("      SPIN      ");
					}
					break;

				case ST_MEN_03_SPIN_RIGTH:
					if(!p_task_menu_dta->flag) break;

					if (EV_MEN_ENT_ACTIVE == p_task_menu_dta->event)
					{
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_VARIABLES_SAVED;
						p_task_menu_dta->tick = DEL_MEN_SAVE;
						if(motor == ID_MOTOR_1) {
							motor_1.Spin = RIGHT;
						}
						else motor_2.Spin = RIGHT;
						displayCharPositionWrite(0, 0);
						displayStringWrite("VARIABLES SAVED!");
					}
					else if(EV_MEN_NEX_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->state = ST_MEN_03_SPIN_LEFT;
						displayCharPositionWrite(0, 0);
						displayStringWrite("      LEFT      ");
					}
					else if(EV_MEN_ESC_ACTIVE == p_task_menu_dta->event) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_02_SPIN;
						displayCharPositionWrite(0, 0);
						displayStringWrite("      SPIN      ");
					}
					break;

				case ST_MEN_VARIABLES_SAVED:
					if(p_task_menu_dta->tick > 0){
						p_task_menu_dta->tick--;
						int tick = p_task_menu_dta->tick;
					}
					if (p_task_menu_dta->tick == 0) {
						p_task_menu_dta->flag = false;
						p_task_menu_dta->state = ST_MEN_MAIN;
						task_display_main();
					}
					break;

			}
		}
	}
}


/********************** end of file ******************************************/
