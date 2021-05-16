
#define INFRA0  PORTA.RA0
#define INFRA1  PORTA.RA1
#define INFRA2  PORTA.RA2
#define INFRA3  PORTA.RA3
#define INFRA4  PORTA.RA5

/*#define PWM1 PORTC.RC1
#define PWM2 PORTC.RC2 */

#define INFRA5  PORTE.RE0
#define INFRA6  PORTE.RE1
#define INFRA7  PORTE.RE2
#define INFRA8  PORTE.RB2
#define INFRA9  PORTE.RB3

#define MOT1_FF PORTD.RD0
#define MOT1_FR PORTD.RD1
#define MOT2_FF PORTD.RD2
#define MOT2_FR PORTD.RD3
#define MOT3_TR PORTD.RD4
#define MOT3_TF PORTD.RD5
#define MOT4_TR PORTD.RD7

#define LEDVERMELHO  PORTB.RB5
#define LEDAMARELO  PORTB.RB6
#define LEDVERDE  PORTB.RB7

#define CHAVE PORTB.RB4

#define S1 PORTB.RB0
#define S2 PORTB.RB1
#define S3 PORTC.RC4

//funções

void TesteInfra1(){

    int infra0, infra1, infra2, infra3, infra4;
    char infra00[10],infra11[10], infra22[10], infra33[10], infra44[10];

    UART1_Init(9600);               // Initialize UART module at 9600 bps
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

  while(S1==0){
   contador1=contador1+1;
   
   if(contador1>20000){
     //gargorra;
  
  
   }
    else{
    return contador1;   //
   }
   }
   
   while(S2==0){
    contador2=contador2+1;
    if(contador2>20000){
     //rampa;
    }
    else{
    return contador1;
    }
    }
    
    while(S3==0){
     contador3=contador3+1;
     if(contador3>20000){
      //escada;
      }
      else{
      return contador1;
       }
       }
  switch(gangorra, rampa,escada)
   case(gangorar, rampa, escada):
    ordem1;x



}

void TesteInfra2(){

    int infra5, infra6, infra7, infra8, infra9;
    char infra55[10],infra66[10], infra77[10], infra88[10], infra99[10];

    UART1_Init(9600);               // Initialize UART module at 9600 bps
    Delay_ms(100);
     while(1){
      PORTD=128;
      infra5= Adc_Read(5)/10;
     /*IntToStr(infra5, infra55);
     UART1_Write_Text(infra55);
     UART1_Write(10);
     UART1_Write(13);   */


      infra6= Adc_Read(6)/10;
     /* IntToStr(infra6, infra66);
      UART1_Write_Text(infra66);
     UART1_Write(10);
      UART1_Write(13);  */

      infra7= Adc_Read(7)/10;
     /* IntToStr(infra7, infra77);
     UART1_Write_Text(infra77);
     UART1_Write(10);
      UART1_Write(13); */

      infra8= Adc_Read(8)/10;
     /* IntToStr(infra8, infra88);
      UART1_Write_Text(infra88);
      UART1_Write(10);
      UART1_Write(13);  */

      infra9= Adc_Read(9)/10;
      /*IntToStr(infra9, infra99);
      UART1_Write_Text(infra99);
      UART1_Write(10);
      UART1_Write(13);  */
      //Delay_ms(100);
       }
       }

void chave(){

    int amarelo;

     if(CHAVE==1){
     
        LEDVERMELHO=1;
        LEDAMARELO=0;
        LEDVERDE=0;
        amarelo=0;

     }
     if(CHAVE==0 && amarelo==0){
            LEDVERMELHO=0;
            LEDAMARELO=1;
            delay_ms(1000);
            LEDAMARELO=0;
            amarelo=1;

     }
     if(CHAVE==0 && amarelo==1){
          LEDAMARELO=0;
          LEDVERDE=1;
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

          if(Infra5<=70 &&  Infra6<=70 && Infra7<=70 && Infra8<=70 && Infra9<=70){

              UART1_Write_Text("Branco");
              //PWM1_Set_Duty(255);
              //PWM2_Set_Duty(255);


              PORTD.RD0=1;
              PORTD.RD2=1;
              PORTD.RD5=1;
              PORTD.RD6=1;


          }
          if(infra5>=80 &&  infra6>=80 && infra7>=80 && infra8>=80 && infra9>=80){

              UART1_Write_Text("Preto");     //altura1,5
              //PWM1_Set_Duty(255);
              //PWM2_Set_Duty(255);
              PORTD.RD0=0;
              PORTD.RD2=0;
              PORTD.RD5=0;
              PORTD.RD6=0;

          }
          /* if(infra5<=70){
                UART1_Write_Text(" 1- Branco");
           }
            if(infra6<=70){
                UART1_Write_Text(" 2- Branco");
           }
            if(infra7<=70){
                UART1_Write_Text("3 - Branco");
           }
            if(infra8<=70){
                UART1_Write_Text("4-Branco");
           }
            if(infra9<=70){
                UART1_Write_Text("5- Branco");
           }

           if(infra5>70 && infra5<80){
                 UART1_Write_Text(" 1- Indefinido ");
          }
            if(infra6>70 && infra6<80){
                 UART1_Write_Text(" 2 - Indefinido ");
          }
            if(infra7>70 && infra7<80){
                 UART1_Write_Text(" 3 - Indefinido ");
          }
            if(infra8>70 && infra8<80){
                 UART1_Write_Text(" 4 -Indefinido ");
          }
            if(infra9>70 && infra9<80){
                 UART1_Write_Text(" 5 - Indefinido ");
          }

            if(infra5>=80){
                UART1_Write_Text(" 1- Preto ");
           }
            if(infra6>=80){
                UART1_Write_Text(" 2- Preto ");
           }
            if(infra7>=80){
                UART1_Write_Text(" 3 - Preto ");
           }
            if(infra8>=80){
                UART1_Write_Text(" 4-Preto ");
           }
            if(infra9>=80){
                UART1_Write_Text(" 5- Preto ");
           }  */

          }



         //<70- BRANCO
         //>80 - PRETO





void motores5s(){

            /*  PWM1_Set_Duty(255);
              PWM2_Set_Duty(255);    */

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
TRISC.RC1=0;  //rc0
TRISC.RC2=0;  //rc1
PWM1_Init(500); // FREQUENCIA DO CLOCK // 1 a declarar
PWM2_Init(500);
PWM1_Start();
PWM1_Set_Duty(0);           // FREQUANCIA DE PWM 0=0%, 255=100%, 192=75%....
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
    LEDAMARELO=0;
    LEDVERMELHO=0;
    LEDVERDE=0;


    PORTD=0;
    TRISC=0;
    TRISC.RC0=0;
    TRISC.RC1=0;
  /* PWM1_Init(500);
     PWM2_Init(500);
     PWM1_Start();
     PWM2_Start();  */
      while(1){

        chave();
          //TesteInfra1();
          //TesteInfra2();
          //motores();


      }

 }