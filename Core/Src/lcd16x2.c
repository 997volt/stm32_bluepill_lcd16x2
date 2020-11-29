#include "lcd16x2.h"


void LCD_Init(void)
{
	RESET_LCD_RS;
	RESET_LCD_E;

	HAL_Delay(15);

	LCD_SetDataPort(LCDC_FUNC|LCDC_FUNC8B);
	HAL_Delay(5);
	LCD_SetDataPort(LCDC_FUNC|LCDC_FUNC8B);
	HAL_Delay(1);

	LCD_SetDataPort(LCDC_FUNC|LCDC_FUNC4B); //4-byte mode
	HAL_Delay(1);
	LCD_WriteCmd(LCDC_FUNC|LCDC_FUNC4B|LCDC_FUNC2L|LCDC_FUNC5x7); // 4-bit, 2 lanes, 5x7 chars

	LCD_WriteCmd(LCDC_ONOFF|LCDC_CURSOROFF); // Cursor off
	LCD_WriteCmd(LCDC_ONOFF|LCDC_DISPLAYON); // LCD on
	LCD_WriteCmd(LCDC_ENTRY|LCDC_ENTRYR); // Data entry right

	LCD_Cls(); // Clear display
}



void LCD_String(char* str)
{
	char c;
	while((c = *(str++)))
		LCD_Char(c);
}

void LCD_Cls(void)
{
	LCD_WriteCmd(LCDC_CLS);
}

void LCD_Char(char c)
{
	LCD_WriteData(((c >= 0x80) && (c <= 0x87)) ? (c & 0x07) : c);
}

void LCD_WriteCmd(uint8_t cmd)
{
	RESET_LCD_RS;
	LCD_WriteByte(cmd);
	HAL_Delay(1); //<<--- wait for command processing
}

void LCD_WriteData(uint8_t data)
{
	SET_LCD_RS;
	LCD_WriteByte(data);
}

void LCD_WriteByte(uint8_t data)
{
	SET_LCD_E;
	LCD_SetDataPort(data >> 4);
	RESET_LCD_E;

	SET_LCD_E;
	LCD_SetDataPort(data);
	RESET_LCD_E;

	HAL_Delay(1);
}

static inline void LCD_SetDataPort(uint8_t data)
{
	if(data & (1<<0))
		HAL_GPIO_WritePin(LCD_D4_GPIO_Port, LCD_D4_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(LCD_D4_GPIO_Port, LCD_D4_Pin, GPIO_PIN_RESET);

	if(data & (1<<1))
		HAL_GPIO_WritePin(LCD_D5_GPIO_Port, LCD_D5_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(LCD_D5_GPIO_Port, LCD_D5_Pin, GPIO_PIN_RESET);

	if(data & (1<<2))
		HAL_GPIO_WritePin(LCD_D6_GPIO_Port, LCD_D6_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(LCD_D6_GPIO_Port, LCD_D6_Pin, GPIO_PIN_RESET);

	if(data & (1<<3))
		HAL_GPIO_WritePin(LCD_D7_GPIO_Port, LCD_D7_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(LCD_D7_GPIO_Port, LCD_D7_Pin, GPIO_PIN_RESET);

}

void LCD_Locate(uint8_t x, uint8_t y)
{
	switch(y)
	{
		case 0:
			y = LCD_LINE1;
			break;
		case 1:
			y = LCD_LINE2;
			break;
	}

	LCD_WriteCmd((0x80 + y + x));
}
