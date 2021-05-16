
_TesteInfra1:

;Define.c,38 :: 		void TesteInfra1(){
;Define.c,43 :: 		UART1_Init(9600);               // Initialize UART module at 9600 bps
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       103
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;Define.c,44 :: 		Delay_ms(100);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_TesteInfra10:
	DECFSZ      R13, 1, 1
	BRA         L_TesteInfra10
	DECFSZ      R12, 1, 1
	BRA         L_TesteInfra10
	NOP
	NOP
;Define.c,45 :: 		while(1){
L_TesteInfra11:
;Define.c,46 :: 		PORTD=128;
	MOVLW       128
	MOVWF       PORTD+0 
;Define.c,47 :: 		infra0= Adc_Read(0)/10;
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_U+0, 0
;Define.c,48 :: 		IntToStr(infra0, infra00);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       TesteInfra1_infra00_L0+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(TesteInfra1_infra00_L0+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Define.c,49 :: 		UART1_Write_Text(infra00);
	MOVLW       TesteInfra1_infra00_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(TesteInfra1_infra00_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Define.c,50 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,51 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,54 :: 		infra1= Adc_Read(1)/10;
	MOVLW       1
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_U+0, 0
;Define.c,55 :: 		IntToStr(infra1, infra11);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       TesteInfra1_infra11_L0+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(TesteInfra1_infra11_L0+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Define.c,56 :: 		UART1_Write_Text(infra11);
	MOVLW       TesteInfra1_infra11_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(TesteInfra1_infra11_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Define.c,57 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,58 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,60 :: 		infra2= Adc_Read(2)/10;
	MOVLW       2
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_U+0, 0
;Define.c,61 :: 		IntToStr(infra2, infra22);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       TesteInfra1_infra22_L0+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(TesteInfra1_infra22_L0+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Define.c,62 :: 		UART1_Write_Text(infra22);
	MOVLW       TesteInfra1_infra22_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(TesteInfra1_infra22_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Define.c,63 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,64 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,66 :: 		infra3= Adc_Read(3)/10;
	MOVLW       3
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_U+0, 0
;Define.c,67 :: 		IntToStr(infra3, infra33);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       TesteInfra1_infra33_L0+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(TesteInfra1_infra33_L0+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Define.c,68 :: 		UART1_Write_Text(infra33);
	MOVLW       TesteInfra1_infra33_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(TesteInfra1_infra33_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Define.c,69 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,70 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,72 :: 		infra4= Adc_Read(4)/10;
	MOVLW       4
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_U+0, 0
;Define.c,73 :: 		IntToStr(infra4, infra44);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       TesteInfra1_infra44_L0+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(TesteInfra1_infra44_L0+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;Define.c,74 :: 		UART1_Write_Text(infra44);
	MOVLW       TesteInfra1_infra44_L0+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(TesteInfra1_infra44_L0+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Define.c,75 :: 		UART1_Write(10);
	MOVLW       10
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,76 :: 		UART1_Write(13);
	MOVLW       13
	MOVWF       FARG_UART1_Write_data_+0 
	CALL        _UART1_Write+0, 0
;Define.c,77 :: 		Delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_TesteInfra13:
	DECFSZ      R13, 1, 1
	BRA         L_TesteInfra13
	DECFSZ      R12, 1, 1
	BRA         L_TesteInfra13
	DECFSZ      R11, 1, 1
	BRA         L_TesteInfra13
	NOP
	NOP
;Define.c,79 :: 		}
	GOTO        L_TesteInfra11
;Define.c,80 :: 		}
L_end_TesteInfra1:
	RETURN      0
; end of _TesteInfra1

_TesteInfra2:

;Define.c,82 :: 		void TesteInfra2(){
;Define.c,87 :: 		UART1_Init(9600);               // Initialize UART module at 9600 bps
	BSF         BAUDCON+0, 3, 0
	CLRF        SPBRGH+0 
	MOVLW       103
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;Define.c,88 :: 		Delay_ms(100);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_TesteInfra24:
	DECFSZ      R13, 1, 1
	BRA         L_TesteInfra24
	DECFSZ      R12, 1, 1
	BRA         L_TesteInfra24
	NOP
	NOP
;Define.c,89 :: 		while(1){
L_TesteInfra25:
;Define.c,90 :: 		PORTD=128;
	MOVLW       128
	MOVWF       PORTD+0 
;Define.c,91 :: 		infra5= Adc_Read(5)/10;
	MOVLW       5
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
;Define.c,98 :: 		infra6= Adc_Read(6)/10;
	MOVLW       6
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
;Define.c,104 :: 		infra7= Adc_Read(7)/10;
	MOVLW       7
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
;Define.c,110 :: 		infra8= Adc_Read(8)/10;
	MOVLW       8
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
;Define.c,116 :: 		infra9= Adc_Read(9)/10;
	MOVLW       9
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
;Define.c,122 :: 		}
	GOTO        L_TesteInfra25
;Define.c,123 :: 		}
L_end_TesteInfra2:
	RETURN      0
; end of _TesteInfra2

_chave:

;Define.c,125 :: 		void chave(){
;Define.c,129 :: 		if(CHAVE==1){
	BTFSS       PORTB+0, 4 
	GOTO        L_chave7
;Define.c,131 :: 		LEDVERMELHO=1;
	BSF         PORTB+0, 5 
;Define.c,132 :: 		LEDAMARELO=0;
	BCF         PORTB+0, 6 
;Define.c,133 :: 		LEDVERDE=0;
	BCF         PORTB+0, 7 
;Define.c,134 :: 		amarelo=0;
	CLRF        R1 
	CLRF        R2 
;Define.c,136 :: 		}
L_chave7:
;Define.c,137 :: 		if(CHAVE==0 && amarelo==0){
	BTFSC       PORTB+0, 4 
	GOTO        L_chave10
	MOVLW       0
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chave42
	MOVLW       0
	XORWF       R1, 0 
L__chave42:
	BTFSS       STATUS+0, 2 
	GOTO        L_chave10
L__chave36:
;Define.c,138 :: 		LEDVERMELHO=0;
	BCF         PORTB+0, 5 
;Define.c,139 :: 		LEDAMARELO=1;
	BSF         PORTB+0, 6 
;Define.c,140 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_chave11:
	DECFSZ      R13, 1, 1
	BRA         L_chave11
	DECFSZ      R12, 1, 1
	BRA         L_chave11
	DECFSZ      R11, 1, 1
	BRA         L_chave11
	NOP
	NOP
;Define.c,141 :: 		LEDAMARELO=0;
	BCF         PORTB+0, 6 
;Define.c,142 :: 		amarelo=1;
	MOVLW       1
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
;Define.c,144 :: 		}
L_chave10:
;Define.c,145 :: 		if(CHAVE==0 && amarelo==1){
	BTFSC       PORTB+0, 4 
	GOTO        L_chave14
	MOVLW       0
	XORWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chave43
	MOVLW       1
	XORWF       R1, 0 
L__chave43:
	BTFSS       STATUS+0, 2 
	GOTO        L_chave14
L__chave35:
;Define.c,146 :: 		LEDAMARELO=0;
	BCF         PORTB+0, 6 
;Define.c,147 :: 		LEDVERDE=1;
	BSF         PORTB+0, 7 
;Define.c,148 :: 		}
L_chave14:
;Define.c,152 :: 		}
L_end_chave:
	RETURN      0
; end of _chave

_leds:

;Define.c,154 :: 		void leds(){
;Define.c,155 :: 		PORTD=0;
	CLRF        PORTD+0 
;Define.c,156 :: 		while(1){
L_leds15:
;Define.c,157 :: 		PORTD=0B11111111;
	MOVLW       255
	MOVWF       PORTD+0 
;Define.c,158 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_leds17:
	DECFSZ      R13, 1, 1
	BRA         L_leds17
	DECFSZ      R12, 1, 1
	BRA         L_leds17
	DECFSZ      R11, 1, 1
	BRA         L_leds17
	NOP
	NOP
;Define.c,159 :: 		PORTD=0;
	CLRF        PORTD+0 
;Define.c,160 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_leds18:
	DECFSZ      R13, 1, 1
	BRA         L_leds18
	DECFSZ      R12, 1, 1
	BRA         L_leds18
	DECFSZ      R11, 1, 1
	BRA         L_leds18
	NOP
	NOP
;Define.c,162 :: 		}
	GOTO        L_leds15
;Define.c,164 :: 		}
L_end_leds:
	RETURN      0
; end of _leds

_motoresInfra:

;Define.c,166 :: 		void motoresInfra(){
;Define.c,169 :: 		delay_ms(100);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_motoresInfra19:
	DECFSZ      R13, 1, 1
	BRA         L_motoresInfra19
	DECFSZ      R12, 1, 1
	BRA         L_motoresInfra19
	NOP
	NOP
;Define.c,170 :: 		while(1){
L_motoresInfra20:
;Define.c,171 :: 		if(Infra5<70 &&  Infra6<70 && Infra7<70 && Infra8<70 && Infra9<70){
	MOVLW       128
	XORWF       motoresInfra_infra5_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra46
	MOVLW       70
	SUBWF       motoresInfra_infra5_L0+0, 0 
L__motoresInfra46:
	BTFSC       STATUS+0, 0 
	GOTO        L_motoresInfra24
	MOVLW       128
	XORWF       motoresInfra_infra6_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra47
	MOVLW       70
	SUBWF       motoresInfra_infra6_L0+0, 0 
L__motoresInfra47:
	BTFSC       STATUS+0, 0 
	GOTO        L_motoresInfra24
	MOVLW       128
	XORWF       motoresInfra_infra7_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra48
	MOVLW       70
	SUBWF       motoresInfra_infra7_L0+0, 0 
L__motoresInfra48:
	BTFSC       STATUS+0, 0 
	GOTO        L_motoresInfra24
	MOVLW       128
	XORWF       motoresInfra_infra8_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra49
	MOVLW       70
	SUBWF       motoresInfra_infra8_L0+0, 0 
L__motoresInfra49:
	BTFSC       STATUS+0, 0 
	GOTO        L_motoresInfra24
	MOVLW       128
	XORWF       motoresInfra_infra9_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra50
	MOVLW       70
	SUBWF       motoresInfra_infra9_L0+0, 0 
L__motoresInfra50:
	BTFSC       STATUS+0, 0 
	GOTO        L_motoresInfra24
L__motoresInfra38:
;Define.c,173 :: 		UART1_Write_Text("Branco");
	MOVLW       ?lstr1_Define+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr1_Define+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Define.c,178 :: 		PORTD.RD0=1;
	BSF         PORTD+0, 0 
;Define.c,179 :: 		PORTD.RD2=1;
	BSF         PORTD+0, 2 
;Define.c,180 :: 		PORTD.RD5=1;
	BSF         PORTD+0, 5 
;Define.c,181 :: 		PORTD.RD6=1;
	BSF         PORTD+0, 6 
;Define.c,184 :: 		}
L_motoresInfra24:
;Define.c,185 :: 		if(infra5>=80 &&  infra6>=80 && infra7>=80 && infra8>=80 && infra9>=80){
	MOVLW       128
	XORWF       motoresInfra_infra5_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra51
	MOVLW       80
	SUBWF       motoresInfra_infra5_L0+0, 0 
L__motoresInfra51:
	BTFSS       STATUS+0, 0 
	GOTO        L_motoresInfra27
	MOVLW       128
	XORWF       motoresInfra_infra6_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra52
	MOVLW       80
	SUBWF       motoresInfra_infra6_L0+0, 0 
L__motoresInfra52:
	BTFSS       STATUS+0, 0 
	GOTO        L_motoresInfra27
	MOVLW       128
	XORWF       motoresInfra_infra7_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra53
	MOVLW       80
	SUBWF       motoresInfra_infra7_L0+0, 0 
L__motoresInfra53:
	BTFSS       STATUS+0, 0 
	GOTO        L_motoresInfra27
	MOVLW       128
	XORWF       motoresInfra_infra8_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra54
	MOVLW       80
	SUBWF       motoresInfra_infra8_L0+0, 0 
L__motoresInfra54:
	BTFSS       STATUS+0, 0 
	GOTO        L_motoresInfra27
	MOVLW       128
	XORWF       motoresInfra_infra9_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__motoresInfra55
	MOVLW       80
	SUBWF       motoresInfra_infra9_L0+0, 0 
L__motoresInfra55:
	BTFSS       STATUS+0, 0 
	GOTO        L_motoresInfra27
L__motoresInfra37:
;Define.c,187 :: 		UART1_Write_Text("Preto");     //altura1,5
	MOVLW       ?lstr2_Define+0
	MOVWF       FARG_UART1_Write_Text_uart_text+0 
	MOVLW       hi_addr(?lstr2_Define+0)
	MOVWF       FARG_UART1_Write_Text_uart_text+1 
	CALL        _UART1_Write_Text+0, 0
;Define.c,190 :: 		PORTD.RD0=0;
	BCF         PORTD+0, 0 
;Define.c,191 :: 		PORTD.RD2=0;
	BCF         PORTD+0, 2 
;Define.c,192 :: 		PORTD.RD5=0;
	BCF         PORTD+0, 5 
;Define.c,193 :: 		PORTD.RD6=0;
	BCF         PORTD+0, 6 
;Define.c,195 :: 		}
L_motoresInfra27:
;Define.c,244 :: 		}
	GOTO        L_motoresInfra20
;Define.c,253 :: 		}
L_end_motoresInfra:
	RETURN      0
; end of _motoresInfra

_motores5s:

;Define.c,255 :: 		void motores5s(){
;Define.c,260 :: 		TRISC.RC0=1;
	BSF         TRISC+0, 0 
;Define.c,261 :: 		TRISC.RC1=1;
	BSF         TRISC+0, 1 
;Define.c,262 :: 		PORTD.RD0=1;
	BSF         PORTD+0, 0 
;Define.c,263 :: 		PORTD.RD2=1;
	BSF         PORTD+0, 2 
;Define.c,264 :: 		PORTD.RD5=1;
	BSF         PORTD+0, 5 
;Define.c,265 :: 		PORTD.RD7=1;
	BSF         PORTD+0, 7 
;Define.c,266 :: 		delay_ms(5000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_motores5s28:
	DECFSZ      R13, 1, 1
	BRA         L_motores5s28
	DECFSZ      R12, 1, 1
	BRA         L_motores5s28
	DECFSZ      R11, 1, 1
	BRA         L_motores5s28
	NOP
;Define.c,267 :: 		PORTD.RD0=0;
	BCF         PORTD+0, 0 
;Define.c,268 :: 		PORTD.RD2=0;
	BCF         PORTD+0, 2 
;Define.c,269 :: 		PORTD.RD5=0;
	BCF         PORTD+0, 5 
;Define.c,270 :: 		PORTD.RD7=0;
	BCF         PORTD+0, 7 
;Define.c,271 :: 		PORTD.RD1=1;
	BSF         PORTD+0, 1 
;Define.c,272 :: 		PORTD.RD3=1;
	BSF         PORTD+0, 3 
;Define.c,273 :: 		PORTD.RD6=1;
	BSF         PORTD+0, 6 
;Define.c,274 :: 		PORTD.RD4=1;
	BSF         PORTD+0, 4 
;Define.c,275 :: 		delay_ms(5000);
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_motores5s29:
	DECFSZ      R13, 1, 1
	BRA         L_motores5s29
	DECFSZ      R12, 1, 1
	BRA         L_motores5s29
	DECFSZ      R11, 1, 1
	BRA         L_motores5s29
	NOP
;Define.c,276 :: 		PORTD=0;
	CLRF        PORTD+0 
;Define.c,277 :: 		delay_ms(2000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_motores5s30:
	DECFSZ      R13, 1, 1
	BRA         L_motores5s30
	DECFSZ      R12, 1, 1
	BRA         L_motores5s30
	DECFSZ      R11, 1, 1
	BRA         L_motores5s30
	NOP
	NOP
;Define.c,279 :: 		}
L_end_motores5s:
	RETURN      0
; end of _motores5s

_pwm:

;Define.c,281 :: 		void pwm() {
;Define.c,284 :: 		TRISD=0;
	CLRF        TRISD+0 
;Define.c,285 :: 		PORTD =0;
	CLRF        PORTD+0 
;Define.c,286 :: 		TRISC.RC1=0;  //rc0
	BCF         TRISC+0, 1 
;Define.c,287 :: 		TRISC.RC2=0;  //rc1
	BCF         TRISC+0, 2 
;Define.c,288 :: 		PWM1_Init(500); // FREQUENCIA DO CLOCK // 1 a declarar
	BSF         T2CON+0, 0, 0
	BSF         T2CON+0, 1, 0
	MOVLW       124
	MOVWF       PR2+0, 0
	CALL        _PWM1_Init+0, 0
;Define.c,289 :: 		PWM2_Init(500);
	BSF         T2CON+0, 0, 0
	BSF         T2CON+0, 1, 0
	MOVLW       124
	MOVWF       PR2+0, 0
	CALL        _PWM2_Init+0, 0
;Define.c,290 :: 		PWM1_Start();
	CALL        _PWM1_Start+0, 0
;Define.c,291 :: 		PWM1_Set_Duty(0);           // FREQUANCIA DE PWM 0=0%, 255=100%, 192=75%....
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;Define.c,292 :: 		PWM2_Start();
	CALL        _PWM2_Start+0, 0
;Define.c,293 :: 		PWM2_Set_Duty(0);
	CLRF        FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;Define.c,294 :: 		while(1){
L_pwm31:
;Define.c,295 :: 		PWM1_Set_Duty(0);
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;Define.c,296 :: 		PWM2_Set_Duty(0);
	CLRF        FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;Define.c,297 :: 		PORTD.RD0=0;
	BCF         PORTD+0, 0 
;Define.c,298 :: 		PORTD.RD1=0;
	BCF         PORTD+0, 1 
;Define.c,299 :: 		PORTD.RD2=0;
	BCF         PORTD+0, 2 
;Define.c,300 :: 		PORTD.RD3=0;
	BCF         PORTD+0, 3 
;Define.c,301 :: 		PORTD.RD4=0;
	BCF         PORTD+0, 4 
;Define.c,302 :: 		PORTD.RD5=0;
	BCF         PORTD+0, 5 
;Define.c,303 :: 		PORTD.RD6=0;
	BCF         PORTD+0, 6 
;Define.c,304 :: 		PORTD.RD7=0;
	BCF         PORTD+0, 7 
;Define.c,305 :: 		}
	GOTO        L_pwm31
;Define.c,306 :: 		}
L_end_pwm:
	RETURN      0
; end of _pwm

_main:

;Define.c,308 :: 		void main() {
;Define.c,309 :: 		ADCON1|=0X0F;
	MOVLW       15
	IORWF       ADCON1+0, 1 
;Define.c,310 :: 		TRISB.RB0=1;
	BSF         TRISB+0, 0 
;Define.c,311 :: 		TRISB.RB1=1;
	BSF         TRISB+0, 1 
;Define.c,312 :: 		TRISB.RB2=1;
	BSF         TRISB+0, 2 
;Define.c,313 :: 		PORTB.RB0=1;
	BSF         PORTB+0, 0 
;Define.c,314 :: 		PORTB.RB1=1;
	BSF         PORTB+0, 1 
;Define.c,315 :: 		PORTB.RB2=1;
	BSF         PORTB+0, 2 
;Define.c,316 :: 		PORTB.RB4=1;
	BSF         PORTB+0, 4 
;Define.c,318 :: 		TRISD=0;
	CLRF        TRISD+0 
;Define.c,319 :: 		TRISB.RB5=0;
	BCF         TRISB+0, 5 
;Define.c,320 :: 		TRISB.RB6=0;
	BCF         TRISB+0, 6 
;Define.c,321 :: 		TRISB.RB7=0;
	BCF         TRISB+0, 7 
;Define.c,322 :: 		PORTD=0;
	CLRF        PORTD+0 
;Define.c,323 :: 		LEDAMARELO=0;
	BCF         PORTB+0, 6 
;Define.c,324 :: 		LEDVERMELHO=0;
	BCF         PORTB+0, 5 
;Define.c,325 :: 		LEDVERDE=0;
	BCF         PORTB+0, 7 
;Define.c,328 :: 		PORTD=0;
	CLRF        PORTD+0 
;Define.c,329 :: 		TRISC=0;
	CLRF        TRISC+0 
;Define.c,330 :: 		TRISC.RC0=0;
	BCF         TRISC+0, 0 
;Define.c,331 :: 		TRISC.RC1=0;
	BCF         TRISC+0, 1 
;Define.c,336 :: 		while(1){
L_main33:
;Define.c,338 :: 		chave();
	CALL        _chave+0, 0
;Define.c,344 :: 		}
	GOTO        L_main33
;Define.c,346 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
