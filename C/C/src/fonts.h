#ifndef __FONTS_H
#define __FONTS_H

#include "stm32f1xx_hal.h"

// Definición de fuentes como matrices de píxeles (Ejemplo de una fuente de 8x8)
extern const uint8_t Font8x8[256][8];  // Fuente de 8x8 píxeles
extern const uint8_t Font16x16[256][32]; // Fuente de 16x16 píxeles

// Funciones para dibujar texto
void DrawChar(uint16_t x, uint16_t y, char c, uint8_t font_size);
void DrawString(uint16_t x, uint16_t y, char *str, uint8_t font_size);

#endif /* __FONTS_H */
