#ifndef __LCD16X2_H
#define __LCD16X2_H

#include "stm32f1xx_hal.h"
#include "main.h"

#define SET_LCD_E 		HAL_GPIO_WritePin(LCD_E_GPIO_Port, LCD_E_Pin, GPIO_PIN_SET)
#define RESET_LCD_E 	HAL_GPIO_WritePin(LCD_E_GPIO_Port, LCD_E_Pin, GPIO_PIN_RESET)

#define SET_LCD_RS 		HAL_GPIO_WritePin(LCD_RS_GPIO_Port, LCD_RS_Pin, GPIO_PIN_SET)
#define RESET_LCD_RS 	HAL_GPIO_WritePin(LCD_RS_GPIO_Port, LCD_RS_Pin, GPIO_PIN_RESET)

#define SET_LCD_D4 		HAL_GPIO_WritePin(LCD_D4_GPIO_Port, LCD_D4_Pin, GPIO_PIN_SET)
#define RESET_LCD_D4 	HAL_GPIO_WritePin(LCD_D4_GPIO_Port, LCD_D4_Pin, GPIO_PIN_RESET)
#define SET_LCD_D5 		HAL_GPIO_WritePin(LCD_D5_GPIO_Port, LCD_D5_Pin, GPIO_PIN_SET)
#define RESET_LCD_D5 	HAL_GPIO_WritePin(LCD_D5_GPIO_Port, LCD_D5_Pin, GPIO_PIN_RESET)
#define SET_LCD_D6 		HAL_GPIO_WritePin(LCD_D6_GPIO_Port, LCD_D6_Pin, GPIO_PIN_SET)
#define RESET_LCD_D6 	HAL_GPIO_WritePin(LCD_D6_GPIO_Port, LCD_D6_Pin, GPIO_PIN_RESET)
#define SET_LCD_D7		HAL_GPIO_WritePin(LCD_D7_GPIO_Port, LCD_D7_Pin, GPIO_PIN_SET)
#define RESET_LCD_D7 	HAL_GPIO_WritePin(LCD_D7_GPIO_Port, LCD_D7_Pin, GPIO_PIN_RESET)

#define LCD_LINE1 0x00		// 1st row 1st char
#define LCD_LINE2 0x40		// 2nd row 1st char

#define LCD_X 16
#define LCD_Y 2

#define LCDC_FUNC					0x20
#define LCDC_FUNC8B					0x10
#define LCDC_FUNC4B					0x00
#define LCDC_FUNC2L					0x08
#define LCDC_FUNC5x7				0x00

#define LCDC_CLS					0x01
#define LCDC_HOME					0x02
#define LCDC_ENTRY					0x04
#define LCDC_ENTRYR					0x02
#define LCDC_ENTRYL					0x00
#define LCDC_MOVE					0x01
#define LCDC_ONOFF					0x08
#define LCDC_DISPLAYON				0x04
#define LCDC_CURSORON				0x02
#define LCDC_CURSOROFF				0x00
#define LCDC_BLINKON				0x01
#define LCDC_SHIFT					0x10
#define LCDC_SHIFTDISP				0x08
#define LCDC_SHIFTR					0x04
#define LCDC_SHIFTL					0x00

void LCD_Init(void);
void LCD_String(char* str);
void LCD_Cls(void);
void LCD_Char(char c);
void LCD_WriteCmd(uint8_t cmd);
void LCD_WriteData(uint8_t data);
void LCD_WriteByte(uint8_t data);
void LCD_Locate(uint8_t x, uint8_t y);
static inline void LCD_SetDataPort(uint8_t data);

#endif
