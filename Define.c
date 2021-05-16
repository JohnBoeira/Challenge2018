//defines

#define INFRA1_D  RA0
#define INFRA2_D  RA1
#define INFRA3_D  RA2
#define INFRA4_D  RA3
#define INFRA5_D  RA5

#define INFRA1_E  RE0
#define INFRA2_E  RE1
#define INFRA3_E  RE2
#define INFRA4_E  RB1
#define INFRA5_E  RB3

/*
#define MOT1_FRENTE PORTD.RD0
#define MOT1_TRAS PORTD.RD1
#define MOT2_F PORTD.RD2
#define MOT2_F PORTD.RD3
#define MOT3_T PORTD.RD4
#define MOT3_T PORTD.RD5
#define MOT4_T PORTD.RD6
#define MOT4_T PORTD.RD7       */

#define LEDVERMELHO  PORTB.RB5
#define LEDAMARELO  PORTB.RB6
#define LEDVERDE  PORTB.RB7

#define CHAVE PORTB.RB4


#define B0 PORTB.RB0
#define B1 PORTB.RB1
#define B2 PORTB.RB2


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
      Delay_ms(5000);

     }
  }

void TesteInfra2(){

    int infra5, infra6, infra7, infra8, infra9;
    char infra55[10],infra66[10], infra77[10], infra88[10], infra99[10];

    UART1_Init(9600);               // Initialize UART module at 9600 bps
    Delay_ms(100);
     while(1){
      PORTD=128;
      infra5= Adc_Read(5)/10;
      IntToStr(infra5, infra55);
      UART1_Write_Text(infra55);
      UART1_Write(10);
      UART1_Write(13);


      infra6= Adc_Read(6)/10;
      IntToStr(infra6, infra66);
      UART1_Write_Text(infra66);
      UART1_Write(10);
      UART1_Write(13);

      infra7= Adc_Read(7)/10;
      IntToStr(infra7, infra77);
      UART1_Write_Text(infra77);
      UART1_Write(10);
      UART1_Write(13);

      infra8= Adc_Read(8)/10;
      IntToStr(infra8, infra88);
      UART1_Write_Text(infra88);
      UART1_Write(10);
      UART1_Write(13);

      infra9= Adc_Read(9)/10;
      IntToStr(infra9, infra99);
      UART1_Write_Text(infra99);
      UART1_Write(10);
      UART1_Write(13);
      Delay_ms(5000);

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
/*
void seguiremFrente(){
    if(INFRA1_D==1 || INFRA2_D==1 && INFRA1_M==1 || INFRA2_M==1 && INFRA1_E==1 || INFRA2_E==1 ){   //verifica se está na faixa
            PORTD=0;
            MOT1_F=0;
            MOT1_T=0;
            MOT2_F=0;
            MOT2_T=0;
    }

         else{      //senão

        if(INFRA1_M==1 || INFRA2_M==1){     //faz todas as possibilidades
              MOT1_F=1;
              MOT2_F=1;
              delay_ms(150);

         }
         if(INFRA1_D==1 || INFRA2_D==1){
              MOT1_F=0;
              MOT2_F=1;
             delay_ms(150);

         }

         if(INFRA1_E==1 || INFRA2_E==1){
              MOT2_F=0;
              MOT1_F=1;
               delay_ms(150);
         }
           if(INFRA1_D==0 || INFRA2_D==0 && INFRA1_M==0 || INFRA2_M==0 && INFRA1_E==0 || INFRA2_E==0 ){
            MOT1_F=1;
            MOT2_F=1;
         }

         } */

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

      while(1){

        chave();

      }

 }



