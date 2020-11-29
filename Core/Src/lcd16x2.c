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
	{
		SET_LCD_RS;
		LCD_WriteByte(c);
	}
}

void LCD_Cls(void)
{
	LCD_WriteCmd(LCDC_CLS);
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

void LCD_WriteCmd(uint8_t cmd)
{
	RESET_LCD_RS;
	LCD_WriteByte(cmd);
	HAL_Delay(1);
}

static inline void LCD_SetDataPort(uint8_t data)
{
	if(data & (1<<0))
		SET_LCD_D4;
	else
		RESET_LCD_D4;

	if(data & (1<<1))
		SET_LCD_D5;
	else
		RESET_LCD_D5;

	if(data & (1<<2))
		SET_LCD_D6;
	else
		RESET_LCD_D6;

	if(data & (1<<3))
		SET_LCD_D7;
	else
		RESET_LCD_D7;

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
