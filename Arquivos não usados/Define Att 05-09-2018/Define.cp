#line 1 "C:/Users/SN/Desktop/Define Att/Define.c"
#line 38 "C:/Users/SN/Desktop/Define Att/Define.c"
void TesteInfra1(){

 int infra0, infra1, infra2, infra3, infra4;
 char infra00[10],infra11[10], infra22[10], infra33[10], infra44[10];

 UART1_Init(9600);
 Delay_ms(100);
 while(1){
 PORTD=128;
 infra0= Adc_Read(0)/10;
 IntToStr(infra0, infra00);
 UART1_Write_Text(infra00);
 UART1_Write(10);
 UART1_Write(13);


 infra1= Adc_Read(1)/10;
 IntToStr(infra1, infra11);
 UART1_Write_Text(infra11);
 UART1_Write(10);
 UART1_Write(13);

 infra2= Adc_Read(2)/10;
 IntToStr(infra2, infra22);
 UART1_Write_Text(infra22);
 UART1_Write(10);
 UART1_Write(13);

 infra3= Adc_Read(3)/10;
 IntToStr(infra3, infra33);
 UART1_Write_Text(infra33);
 UART1_Write(10);
 UART1_Write(13);

 infra4= Adc_Read(4)/10;
 IntToStr(infra4, infra44);
 UART1_Write_Text(infra44);
 UART1_Write(10);
 UART1_Write(13);
 Delay_ms(1000);

 }
 }

void Debounce(){
TRISB.RB0=0;
TRISB.RB1=0;
TRISC.RC4=0;
PORTB.RB0=1;
PORTB.RB1=1;
PORTC.RC4=1;
int contador1,contador2,contador3;
char gangorra,rampa,escada;
contador1=0;
contador2=0;
contador3=0;

 while( PORTB.RB0 ==0){
 contador1=contador1+1;

 if(contador1>20000){
 gargorra


 }
 else{
 return contador1;
 }
 }
 switch{
 case(



}

void TesteInfra2(){

 int infra5, infra6, infra7, infra8, infra9;
 char infra55[10],infra66[10], infra77[10], infra88[10], infra99[10];

 UART1_Init(9600);
 Delay_ms(100);
 while(1){
 PORTD=128;
 infra5= Adc_Read(5)/10;
#line 130 "C:/Users/SN/Desktop/Define Att/Define.c"
 infra6= Adc_Read(6)/10;
#line 136 "C:/Users/SN/Desktop/Define Att/Define.c"
 infra7= Adc_Read(7)/10;
#line 142 "C:/Users/SN/Desktop/Define Att/Define.c"
 infra8= Adc_Read(8)/10;
#line 148 "C:/Users/SN/Desktop/Define Att/Define.c"
 infra9= Adc_Read(9)/10;
#line 154 "C:/Users/SN/Desktop/Define Att/Define.c"
 }
 }

void chave(){

 int amarelo;

 if( PORTB.RB4 ==1){

  PORTB.RB5 =1;
  PORTB.RB6 =0;
  PORTB.RB7 =0;
 amarelo=0;

 }
 if( PORTB.RB4 ==0 && amarelo==0){
  PORTB.RB5 =0;
  PORTB.RB6 =1;
 delay_ms(1000);
  PORTB.RB6 =0;
 amarelo=1;

 }
 if( PORTB.RB4 ==0 && amarelo==1){
  PORTB.RB6 =0;
  PORTB.RB7 =1;
 }



}

void leds(){
 PORTD=0;
 while(1){
 PORTD=0B11111111;
 delay_ms(1000);
 PORTD=0;
 delay_ms(1000);

 }

}

void motoresInfra(){
 int infra5, infra6, infra7, infra8, infra9;
 char infra55[10],infra66[10], infra77[10], infra88[10], infra99[10];
 delay_ms(100);

 if(Infra5<=70 && Infra6<=70 && Infra7<=70 && Infra8<=70 && Infra9<=70){

 UART1_Write_Text("Branco");




 PORTD.RD0=1;
 PORTD.RD2=1;
 PORTD.RD5=1;
 PORTD.RD6=1;


 }
 if(infra5>=80 && infra6>=80 && infra7>=80 && infra8>=80 && infra9>=80){

 UART1_Write_Text("Preto");


 PORTD.RD0=0;
 PORTD.RD2=0;
 PORTD.RD5=0;
 PORTD.RD6=0;

 }
#line 276 "C:/Users/SN/Desktop/Define Att/Define.c"
 }










void motores5s(){
#line 292 "C:/Users/SN/Desktop/Define Att/Define.c"
 TRISC.RC0=1;
 TRISC.RC1=1;
 PORTD.RD0=1;
 PORTD.RD2=1;
 PORTD.RD5=1;
 PORTD.RD7=1;
 delay_ms(5000);
 PORTD.RD0=0;
 PORTD.RD2=0;
 PORTD.RD5=0;
 PORTD.RD7=0;
 PORTD.RD1=1;
 PORTD.RD3=1;
 PORTD.RD6=1;
 PORTD.RD4=1;
 delay_ms(5000);
 PORTD=0;
 delay_ms(2000);

}

void pwm() {


TRISD=0;
PORTD =0;
TRISC.RC1=0;
TRISC.RC2=0;
PWM1_Init(500);
PWM2_Init(500);
PWM1_Start();
PWM1_Set_Duty(0);
PWM2_Start();
PWM2_Set_Duty(0);
while(1){
PWM1_Set_Duty(0);
PWM2_Set_Duty(0);
PORTD.RD0=0;
PORTD.RD1=0;
PORTD.RD2=0;
PORTD.RD3=0;
PORTD.RD4=0;
PORTD.RD5=0;
PORTD.RD6=0;
PORTD.RD7=0;
}
}

void main() {
 ADCON1|=0X0F;
 TRISB.RB0=1;
 TRISB.RB1=1;
 TRISB.RB2=1;
 PORTB.RB0=1;
 PORTB.RB1=1;
 PORTB.RB2=1;
 PORTB.RB4=1;

 TRISD=0;
 TRISB.RB5=0;
 TRISB.RB6=0;
 TRISB.RB7=0;
 PORTD=0;
  PORTB.RB6 =0;
  PORTB.RB5 =0;
  PORTB.RB7 =0;


 PORTD=0;
 TRISC=0;
 TRISC.RC0=0;
 TRISC.RC1=0;
#line 368 "C:/Users/SN/Desktop/Define Att/Define.c"
 while(1){

 chave();





 }

 }
