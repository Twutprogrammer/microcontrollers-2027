;
; project1.asm
;
; Created: 29/09/2026 10:17:23 p. m.
; Author : Julio Androtti
;


; Replace with your application code
main:
//Establecemos el puerto 5 como salida como indica la instruccion, elegimos 1 y 2 para entradas 
SBI DDRB , 5
CBI DDRB, 1
CBI DDRB, 2
// Establecemos que el 
SBI DDRB, 1
SBI DDRB, 2

//Procesamos las entradas
    IN R16, PINB
    IN R16, PINB
// Generamos la instruccion de acuerdo al primer escenario 00
    CPI R16, 0x00
    BREQ FREQ_100K

    // Generamos la segunda instruccion de acuerdo al segundo escenario 01
    CPI R16, 0x02
    BREQ FREQ_500K

    // Generamos la segunda instruccion de acuerdo al tercer escenario 01
    CPI R16, 0x04
    BREQ FREQ_1M

    // Si no fue ninguna de las anteriores,solamente puede ser 11
   
    RJMP FREQ_2M

	FREQ_100K:

    // Aquí construiremos posteriormente
    // la señal de 100 kHz en PB5.

    RJMP MAIN

	FREQ_500K:

    // Aquí construiremos posteriormente
    // la señal de 500 kHz en PB5.

    RJMP MAIN
FREQ_1M:

    // Aquí construiremos posteriormente
    // la señal de 1 MHz en PB5.

    RJMP MAIN
FREQ_2M:

    // Aquí construiremos posteriormente
    // la señal de 2 MHz en PB5.

    RJMP MAIN


