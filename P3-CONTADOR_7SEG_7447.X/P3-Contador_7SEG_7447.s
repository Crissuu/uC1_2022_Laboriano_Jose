;--------------------------------------------------------------
; @file P3-CONTADOR_7SEG_7447
; @brief Este programa ejecuta un corrimiento de leds cuando presionas por
;        primera vez el pulsador y se detiene cuando vuelves a presionar.
; @date 14/01/2004
; @author Jose Cristian Laboriano Hernández
; @Programa y Versión: MPLAB X IDE v6.00
;------------------------------------------------------------------
PROCESSOR 18F57Q84
    
#include "Bit_config.inc" /*config statements should precede project file includes.*/
#include "Retardos1.inc"
#include <xc.inc>

PSECT resetVect,class=CODE, reloc=2
resetVect:
    goto Main
PSECT CODE
Main:
    CALL    Config_OSC
    CALL    Config_Port
    NOP
 
CONTEO_ASCENDENTE:
    DECENAS_ASCENDENTES:
	Numero_0DA:;0000		
	  CLRF	PORTD,0		;Configurar las salidas para que el 7447 mande al display una imagen de 0
	  UNIDADES0:
	    Numero_A0DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_0UNI
	    Numero_A0DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_1UNI
	    Numero_A0DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_2UNI
	    Numero_A0DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_3UNI
	    Numero_A0DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_4UNI
	    Numero_A0DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_5UNI
	    Numero_A0DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_6UNI
	    Numero_A0DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_7UNI
	    Numero_A0DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_8UNI
	    Numero_A0DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_0DE_9UNI

	Numero_1DA:;0001
	  CLRF	PORTD,0		;Configurar las salidas para que el 7447 mande al display una imagen de 1
	  BSF	PORTD,0,0	;RD0-->1
	  UNIDADES1:
	    Numero_A1DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_0UNI
	    Numero_A1DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_1UNI
	    Numero_A1DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_2UNI
	    Numero_A1DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_3UNI
	    Numero_A1DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_4UNI
	    Numero_A1DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_5UNI
	    Numero_A1DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_6UNI
	    Numero_A1DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_7UNI
	    Numero_A1DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_8UNI
	    Numero_A1DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_1DE_9UNI
	Numero_2DA:;0010
	  CLRF	PORTD,0		;Configurar las salidas para que el 7447 mande al display una imagen de  2
	  BSF	PORTD,1,0	;RD1-->1    
	  UNIDADES2:
	    Numero_A2DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_0UNI
	    Numero_A2DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_1UNI
	    Numero_A2DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_2UNI
	    Numero_A2DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_3UNI
	    Numero_A2DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_4UNI
	    Numero_A2DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_5UNI
	    Numero_A2DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_6UNI
	    Numero_A2DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_7UNI
	    Numero_A2DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_8UNI
	    Numero_A2DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_2DE_9UNI

	;Hacer lo mismo para las siguientes decenas
	Numero_3DA:;0011
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  BSF	PORTD,1,0	;RD1-->1
	  UNIDADES3:
	    Numero_A3DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_0UNI
	    Numero_A3DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_1UNI
	    Numero_A3DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_2UNI
	    Numero_A3DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_3UNI
	    Numero_A3DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_4UNI
	    Numero_A3DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_5UNI
	    Numero_A3DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_6UNI
	    Numero_A3DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_7UNI
	    Numero_A3DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_8UNI
	    Numero_A3DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_3DE_9UNI
	Numero_4DA:;0100
	  CLRF	PORTD,0
	  BSF	PORTD,2,0	;RD2-->1
	 UNIDADES4:
	    Numero_A4DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_0UNI
	    Numero_A4DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_1UNI
	    Numero_A4DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_2UNI
	    Numero_A4DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_3UNI
	    Numero_A4DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_4UNI
	    Numero_A4DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_5UNI
	    Numero_A4DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_6UNI
	    Numero_A4DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_7UNI
	    Numero_A4DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_8UNI
	    Numero_A4DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_4DE_9UNI
	Numero_5DA:;0101
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  BSF	PORTD,2,0	;RD2-->1
	  UNIDADES5:
	    Numero_A5DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_0UNI
	    Numero_A5DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_1UNI
	    Numero_A5DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_2UNI
	    Numero_A5DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_3UNI
	    Numero_A5DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_4UNI
	    Numero_A5DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_5UNI
	    Numero_A5DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_6UNI
	    Numero_A5DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_7UNI
	    Numero_A5DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_8UNI
	    Numero_A5DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_5DE_9UNI

	Numero_6DA:;0110
	  CLRF	PORTD,0
	  BSF	PORTD,1,0	;RD1-->1
	  BSF	PORTD,2,0	;RD2-->1
	  UNIDADES6:
	    Numero_A6DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_0UNI
	    Numero_A6DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_1UNI
	    Numero_A6DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_2UNI
	    Numero_A6DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_3UNI
	    Numero_A6DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_4UNI
	    Numero_A6DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_5UNI
	    Numero_A6DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_6UNI
	    Numero_A6DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_7UNI
	    Numero_A6DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_8UNI
	    Numero_A6DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_6DE_9UNI

	Numero_7DA:;0111
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  BSF	PORTD,1,0	;RD1-->1
	  BSF	PORTD,2,0	;RD2-->1
	  UNIDADES7:
	    Numero_A7DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_0UNI
	    Numero_A7DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_1UNI
	    Numero_A7DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_2UNI
	    Numero_A7DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_3UNI
	    Numero_A7DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_4UNI
	    Numero_A7DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_5UNI
	    Numero_A7DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_6UNI
	    Numero_A7DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_7UNI
	    Numero_A7DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_8UNI
	    Numero_A7DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_7DE_9UNI
	Numero_8DA:;1000
	  CLRF	PORTD,0
	  BSF	PORTD,3,0	;RD3-->1
	  UNIDADES8:
	    Numero_A8DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_0UNI
	    Numero_A8DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_1UNI
	    Numero_A8DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_2UNI
	    Numero_A8DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_3UNI
	    Numero_A8DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_4UNI
	    Numero_A8DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_5UNI
	    Numero_A8DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_6UNI
	    Numero_A8DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_7UNI
	    Numero_A8DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_8UNI
	    Numero_A8DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_8DE_9UNI
	Numero_9DA:;1001
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  BSF	PORTD,3,0	;RD3-->1
	  UNIDADES9:
	    Numero_A9DE_0UNI:;0000
	    CLRF	PORTB,0
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_0UNI
	    Numero_A9DE_1UNI:;0001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_1UNI
	    Numero_A9DE_2UNI:;0010
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1    
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_2UNI
	    Numero_A9DE_3UNI:;0011
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_3UNI
	    Numero_A9DE_4UNI:;0100
	    CLRF	PORTB,0
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_4UNI
	    Numero_A9DE_5UNI:;0101
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_5UNI
	    Numero_A9DE_6UNI:;0110
	    CLRF	PORTB,0
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_6UNI
	    Numero_A9DE_7UNI:;0111
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,1,0	;RB1-->1
	    BSF	PORTB,2,0	;RB2-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_7UNI
	    Numero_A9DE_8UNI:;1000
	    CLRF	PORTB,0
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_8UNI
	    Numero_A9DE_9UNI:;1001
	    CLRF	PORTB,0
	    BSF	PORTB,0,0	;RB0-->1
	    BSF	PORTB,3,0	;RB3-->1
	    CALL Delay_500ms
	    BTFSS	PORTA,3,0
	    GOTO	Numero_9DE_9UNI
	    GOTO	Numero_0DA
	    
CONTEO_DESCENDENTE:
    DECENAS_DESCENDENTE:
        Numero_9DD:
	;cargamos el numero 9
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  BSF	PORTD,3,0	;RD3-->1
	  UNIDADES_DES9:
	    Numero_9DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_9UNI
	    Numero_9DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_8UNI
	    Numero_9DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_7UNI
	    Numero_9DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_6UNI
	    Numero_9DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_5UNI
	    Numero_9DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_4UNI
	    Numero_9DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_3UNI
	    Numero_9DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_2UNI
	    Numero_9DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_1UNI
	    Numero_9DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A9DE_0UNI
	Numero_8DD:	
	  ;cargamos el numero 8
	  CLRF	PORTD,0
	  BSF	PORTD,3,0	;RD3-->1
	  UNIDADES_DES8:
	    Numero_8DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_9UNI
	    Numero_8DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_8UNI
	    Numero_8DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_7UNI
	    Numero_8DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_6UNI
	    Numero_8DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_5UNI
	    Numero_8DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_4UNI
	    Numero_8DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_3UNI
	    Numero_8DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_2UNI
	    Numero_8DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_1UNI
	    Numero_8DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A8DE_0UNI
	Numero_7DD:	;cargamos el numero 7
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  BSF	PORTD,1,0	;RD1-->1
	  BSF	PORTD,2,0	;RD2-->1
	  UNIDADES_DES7:
	    Numero_7DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_9UNI
	    Numero_7DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_8UNI
	    Numero_7DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_7UNI
	    Numero_7DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_6UNI
	    Numero_7DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_5UNI
	    Numero_7DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_4UNI
	    Numero_7DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_3UNI
	    Numero_7DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_2UNI
	    Numero_7DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_1UNI
	    Numero_7DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A7DE_0UNI
	Numero_6DD:	;cargamos el numero 6
	  CLRF	PORTD,0
	  BSF	PORTD,1,0	;RD1-->1
	  BSF	PORTD,2,0	;RD2-->1
	  UNIDADES_DES6:
	    Numero_6DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_9UNI
	    Numero_6DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_8UNI
	    Numero_6DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_7UNI
	    Numero_6DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_6UNI
	    Numero_6DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_5UNI
	    Numero_6DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_4UNI
	    Numero_6DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_3UNI
	    Numero_6DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_2UNI
	    Numero_6DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_1UNI
	    Numero_6DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A6DE_0UNI
	Numero_5DD:	;cargamos el numero 5
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  BSF	PORTD,2,0	;RD2-->1
	  UNIDADES_DES5:
	    Numero_5DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_9UNI
	    Numero_5DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_8UNI
	    Numero_5DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_7UNI
	    Numero_5DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_6UNI
	    Numero_5DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_5UNI
	    Numero_5DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_4UNI
	    Numero_5DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_3UNI
	    Numero_5DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_2UNI
	    Numero_5DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_1UNI
	    Numero_5DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A5DE_0UNI
	Numero_4DD:	;cargamos el numero 4
	  CLRF	PORTD,0
	  BSF	PORTD,2,0	;RD2-->1
	  UNIDADES_DES4:
	    Numero_4DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_9UNI
	    Numero_4DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_8UNI
	    Numero_4DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_7UNI
	    Numero_4DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_6UNI
	    Numero_4DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_5UNI
	    Numero_4DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_4UNI
	    Numero_4DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_3UNI
	    Numero_4DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_2UNI
	    Numero_4DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_1UNI
	    Numero_4DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A4DE_0UNI
	Numero_3DD:	;cargamos el numero 3
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  BSF	PORTD,1,0	;RD1-->1    
	  UNIDADES_DES3:
	    Numero_3DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_9UNI
	    Numero_3DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_8UNI
	    Numero_3DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_7UNI
	    Numero_3DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_6UNI
	    Numero_3DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_5UNI
	    Numero_3DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_3DE_4UNI
	    Numero_3DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_3UNI
	    Numero_3DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_2UNI
	    Numero_3DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_1UNI
	    Numero_3DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A3DE_0UNI
	Numero_2DD:	;cargamos el numero 2
	  CLRF	PORTD,0
	  BSF	PORTD,1,0	;RD1-->1    
	  UNIDADES_DES2:
	    Numero_2DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_9UNI
	    Numero_2DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_8UNI
	    Numero_2DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_7UNI
	    Numero_2DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_6UNI
	    Numero_2DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_5UNI
	    Numero_2DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_4UNI
	    Numero_2DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_3UNI
	    Numero_2DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_2UNI
	    Numero_2DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_1UNI
	    Numero_2DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A2DE_0UNI
	Numero_1DD:	;cargamos el numero 1
	  CLRF	PORTD,0
	  BSF	PORTD,0,0	;RD0-->1
	  UNIDADES_DES1:
	    Numero_1DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_9UNI
	    Numero_1DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_8UNI
	    Numero_1DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_7UNI
	    Numero_1DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_6UNI
	    Numero_1DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_5UNI
	    Numero_1DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_4UNI
	    Numero_1DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_3UNI
	    Numero_1DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_2UNI
	    Numero_1DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_1UNI
	    Numero_1DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A1DE_0UNI
	Numero_0DD:	;cargamos el numero 9
	  CLRF	PORTD,0
	  UNIDADES_DES0:
	    Numero_0DE_9UNI:;1001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_9UNI
	    Numero_0DE_8UNI:;1000
	      CLRF	PORTB,0
	      BSF	PORTB,3,0	;RB3-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_8UNI
	    Numero_0DE_7UNI:;0111
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_7UNI
	    Numero_0DE_6UNI:;0110
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_6UNI
	    Numero_0DE_5UNI:;0101
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_5UNI
	    Numero_0DE_4UNI:;0100
	      CLRF	PORTB,0
	      BSF	PORTB,2,0	;RB2-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_4UNI
	    Numero_0DE_3UNI:;0011
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      BSF	PORTB,1,0	;RB1-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_3UNI
	    Numero_0DE_2UNI:;0010
	      CLRF	PORTB,0
	      BSF	PORTB,1,0	;RB1-->1    
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_2UNI
	    Numero_0DE_1UNI:;0001
	      CLRF	PORTB,0
	      BSF	PORTB,0,0	;RB0-->1
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_1UNI
	    Numero_0DE_0UNI:;0000
	      CLRF	PORTB,0
	      CALL Delay_500ms
	      BTFSC	PORTA,3,0
	      GOTO	Numero_A0DE_0UNI
	      GOTO CONTEO_DESCENDENTE
Config_OSC:
    ;configuración del Oscilador interno a una frecuencia de 4Mhz
    BANKSEL OSCCON1
    MOVLW 0x60	;seleccionamos el bloque del oscilador interno con un div:1
    MOVWF OSCCON1
    MOVLW 0X02	;seleccionamos a una frecuencia de 4Mhz
    MOVWF OSCFRQ
    RETURN
 
Config_Port:	;PORT-LAT-ANSEL-TRIS LED:RF3,  BUTTON:RA3
    ;Config Button
    BANKSEL LATA
    CLRF    LATA,1	;PORTA<7,0> = 0
    CLRF    ANSELA,1	;PORTA DIGITAL
    BSF	    TRISA,3,1	;RA3 COMO ENTRADA
    BSF	    WPUA,3,1	;ACTIVAMOS LA RESISTENCIA PULLUP DEL PIN RA3
    ;Config Port B
    BANKSEL PORTB
    CLRF    PORTB,1	;PORTB<7,0> = 0
    CLRF    ANSELB,1	;PORTB DIGITAL
    CLRF    TRISB,1	;PORTB COMO SALIDA
    ;Config Port D
    BANKSEL PORTD
    CLRF    PORTD,1	;PORTD<7,0> = 0	
    CLRF    ANSELD,1	;PORTD DIGITAL
    CLRF    TRISD,1	;PORTD COMO SALIDA
    RETURN

END resetVect


