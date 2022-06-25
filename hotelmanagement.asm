

INCLUDE Irvine32.inc

.data
 ; GROUP MEMBERS                                                     ID
;1.	MINILIK ZERU---------------------------------------15212/20
;2.	SAMUEL WEBALEM--------------------------------15218/20
;3.	NATNAEL ZELALEM---------------------------------14622/20
;4.	SALIM ABDURAHMAN-----------------------------15059/20
;5.	ABRHAM NEGASSA----------------------------------15091/20
;6.	ERMIAS YOSEPH---------------------------------------14619/20
;7.	KASAHUN FRANCHIS----------------------------------14667/20



  num DWORD ?
  num1 DWORD ?
  num2 DWORD ?
  num3 DWORD ?
  num4 DWORD ?
  quantity DWORD ?
  all DWORD ?
  price DWORD ?
  opt DWORD ?

;MAIN MENU

  text1 byte "      ******Welcome to Our hotel********", 0
  text2 byte "      **     1.Breakfast Menu         **",0
  text3 byte "      **     2.Lunch Menu             **", 0
  text4 byte "      **     3.Dinner Menu            **", 0
  text5 byte "      **     4.Drinks                 **", 0
  text6 byte "      **********************************", 0
;BREAK FAST MENU
  BREAKFAST0 byte "   ******LIST****BREAKFAST***PRICE******", 0
  BREAKFAST1 byte "   **   1.Firfir            20 BIRR   **", 0
  BREAKFAST2 byte "   **   2.Enkulal           15 BIRR   **", 0
  BREAKFAST3 byte "   **   3.Sandwitch         15 BIRR   **", 0
  BREAKFAST4 byte "   **   4.Mixed Vegetables  30 BIRR   **", 0
  BREAKFAST5 byte "   **   5.Full              20 BIRR   **", 0
  BREAKFAST6 byte "   **   6.Pasta             30 BIRR   **", 0
  BREAKFAST7 byte "   **   7.mecoroni          30 BIRR   **", 0
  BREAKFAST8 byte "   *************************************", 0
   
   BORDER byte "         YOU ORDER IS ACCEPTED , HOW MANY DO YOU NEED?", 0

;LUNCH MENU  
  LANCH0 byte "      ******LIST******LUNCH****PRICE*************", 0
  LANCH1 byte "      **   1.Tibse             90 BIRR         **", 0
  LANCH2 byte "      **   2.Kikle             90 BIRR         **", 0
  LANCH3 byte "      **   3.Shro wot          50 BIRR         **", 0
  LANCH4 byte "      **   4.Doro wot          200 BIRR        **", 0
  LANCH5 byte "      **   5.Biff burger       130 BIRR        **", 0
  LANCH6 byte "      **   6.Plain Rice        100 BIRR        **", 0
  LANCH7 byte "      **   7.Pizza             130 BIRR        **", 0
  LANCH8 byte "      *******************************************", 0


;DINNER MENU
  DINNER0 byte "      *******LIST*****DINNER****PRICE*************", 0
  DINNER1 byte "      **   1.Tibse              90 BIRR         **", 0
  DINNER2 byte "      **   2.Kikle              90 BIRR         **", 0
  DINNER3 byte "      **   3.Shro wot           50 BIRR         **", 0
  DINNER4 byte "      **   4.Doro wot          200 BIRR         **", 0
  DINNER5 byte "      **   5.Biff burger       130 BIRR         **", 0
  DINNER6 byte "      **   6.Plain Rice        130 BIRR         **", 0
  DINNER7 byte "      **   7.Pizza             130 BIRR         **", 0
  DINNER8 byte "      **   8.Arusto            130 BIRR         **", 0
  DINNER9 byte "      ********************************************", 0 
   
;DRINKS
  DRINK0 byte "      ******LIST*****DRINKS****PRICE***************", 0
  DRINK1 byte "      **   1.Soft drinks       30 BIRR           **", 0
  DRINK2 byte "      **   2.Beer              40 BIRR           **", 0
  DRINK3 byte "      **   3.Draft             30 BIRR           **", 0
  DRINK4 byte "      **   4.Water             20 BIRR           **", 0
  DRINK5 byte "      **   5.Malta             40 BIRR           **", 0
  DRINK6 byte "      **   6.Wain              120 BIRR          **", 0
  DRINK7 byte "      **   7.Wisky             400 BIRR          **", 0
  DRINK8 byte "      *********************************************", 0

   LINE byte " ******************************************************************************************************", 0
  CHOICE byte "         PLEASE ENTER YOUR CHOICE:-", 0
  AMOUNT byte "         HOW MANY:-",0
  DRINKOPTION byte "         IF YOU WANT TO ORDER DRINK PRESS 1 ELSE PRESS OTHER KEY", 0
  TOTALPRICE  byte "         YOUR TOTAL PRICE IS :-", 0
.code
main PROC
  min:
     mov edx,OFFSET text1     ; Display start
	 call WriteString
	 call Crlf
	 mov edx,OFFSET text2	
	 call WriteString
	 call Crlf	
	 mov edx,OFFSET text3
	 call WriteString
	 mov num1,eax
	 call Crlf
	 mov edx,OFFSET text4	
	 call WriteString
	 call Crlf
	 mov edx,OFFSET text5	
	 call WriteString
	 call Crlf  
	 mov edx,OFFSET text6	
	 call WriteString
	 call Crlf               ; End of menue display
	  
	 mov edx,OFFSET CHOICE	
	 call WriteString
	call ReadInt
	mov num,eax

	 CMP num,1
     Je  BREAKFAST
	 jmp com1

com1:
	CMP num,2
    Je  LANCH
	jmp com2
com2:
	CMP num,3
	Je   DINNER
	jmp com3
com3:
	CMP num,4
	Je   DRINK
	jmp done
 
 
  
BREAKFAST:                                          ;BREAKFAST STARTS 
		call Crlf
	    call Crlf
    mov edx,OFFSET BREAKFAST0                        ;DISPLAY BREAKFAST ITEMS
	call WriteString
	call Crlf
    mov edx,OFFSET BREAKFAST1    
	call WriteString
	call Crlf
	mov edx,OFFSET BREAKFAST2	
	call WriteString
	call Crlf	
	mov edx,OFFSET BREAKFAST3
	call WriteString
	call Crlf
	mov edx,OFFSET BREAKFAST4	
	call WriteString
	call Crlf
	 mov edx,OFFSET BREAKFAST5	
	 call WriteString
	 call Crlf 
	 mov edx,OFFSET BREAKFAST6	
	 call WriteString
	 call Crlf
	 mov edx,OFFSET BREAKFAST7	
	 call WriteString
	 call Crlf 
	 mov edx,OFFSET BREAKFAST8    
	 call WriteString
	 call Crlf                                   ;DISPLAY BREAKFAST ITEMS ENDS 

	 mov edx,OFFSET CHOICE	                     ;TAKE CHOICE
	 call WriteString
	 call ReadDec
	 mov num1,eax
	 call Crlf
	 
	 CMP num1,1                                  ;COMPARE CHOICE START
     Je  FIRFIR
	 jmp comb1

comb1:
	CMP num1,2
    Je  ENKULAL
	jmp comb2
comb2:
	CMP num1,3
	Je  SANDWICH
	jmp comb3

comb3:
	CMP num1,4
	Je   VEGITABLE
	jmp comb4
	
comb4:
	CMP num1,5
	Je   FULL
	jmp comb5

comb5:
	CMP num1,6
	Je   PASTA
	jmp comb6

comb6:
	CMP num1,7
	Je   MACARONI

	jmp done                                      ;COMPARE CHOICE START


FIRFIR:                                           ;BREAKFAST FUNCTIONS
	mov edx,offset BORDER
	call writestring
	mov eax, 20
	jmp CALCULATE
ENKULAL:
	mov edx,offset BORDER
	call writestring
	mov eax, 15
	jmp CALCULATE

SANDWICH:
	mov edx,offset BORDER
	call writestring
	mov eax, 15
	jmp CALCULATE

VEGITABLE:
	mov edx,offset BORDER
	call writestring
	mov eax, 30
	jmp CALCULATE

FULL:
	mov edx,offset BORDER
	call writestring
	mov eax, 20
	jmp CALCULATE

PASTA:
	mov edx,offset BORDER
	call writestring
	mov eax, 30
	jmp CALCULATE

MACARONI:
	mov edx,offset BORDER
	call writestring
	mov eax, 30
	jmp CALCULATE                                 ;BREAKFAST FUNCTION ENDS



LANCH:                                            ;LANCH
		call Crlf
		call Crlf
     mov edx,OFFSET LANCH0                         ;LANCH ITEMS DISPLAY
	 call WriteString
	 call Crlf
     mov edx,OFFSET LANCH1    
	 call WriteString
	 call Crlf
	  mov edx,OFFSET LANCH2	
	 call WriteString
	 call Crlf	
	  mov edx,OFFSET LANCH3
	 call WriteString
	 call Crlf
	  mov edx,OFFSET LANCH4	
	 call WriteString
	  call Crlf
	  mov edx,OFFSET LANCH5	
	 call WriteString
	  call Crlf 
	  mov edx,OFFSET LANCH6	
	 call WriteString
	  call Crlf
	  mov edx,OFFSET LANCH7	
	 call WriteString
	  call Crlf
      mov edx,OFFSET LANCH8    
	 call WriteString
	 call Crlf                                      ;LANCH ITEMS DISPLAY ENDS

	 mov edx,OFFSET CHOICE	                        ;INPUT CHOICE
	 call WriteString
	 call ReadDec
	 mov num2,eax
	 call Crlf
	 
	 CMP num2,1                                    ;CONPARE CHOICE START
     Je  TIBS
	 jmp coml1

coml1:
	CMP num2,2
    Je  KIKILE
	jmp coml2
coml2:
	CMP num2,3
	Je  SHIROWOT
	jmp coml3

coml3:
	CMP num2,4
	Je  DOROWOT
	jmp coml4
	
coml4:
	CMP num2,5
	Je  BIFFBURGER
	jmp coml5

coml5:
	CMP num2,6
	Je   PLAINRICE
	jmp coml6

coml6:
	CMP num2,7
	Je   PIZA

	jmp done                                      ;CONPARE CHOICE ENDS


TIBS:                                            ;LANCH FUNCTION
	mov edx,offset BORDER
	call writestring
	mov eax, 90
	jmp CALCULATE
KIKILE:
	mov edx,offset BORDER
	call writestring
	mov eax, 90
	jmp CALCULATE

SHIROWOT:
	mov edx,offset BORDER
	call writestring
	mov eax, 50
	jmp CALCULATE

DOROWOT:
	mov edx,offset BORDER
	call writestring
	mov eax, 200
	jmp CALCULATE

BIFFBURGER:
	mov edx,offset BORDER
	call writestring
	mov eax, 130
	jmp CALCULATE

PLAINRICE:
	mov edx,offset BORDER
	call writestring
	mov eax, 100
	jmp CALCULATE

PIZA:
	mov edx,offset BORDER
	call writestring
	mov eax, 130
	jmp CALCULATE                                      ;LANCH FUNCTION ENDS

DINNER:                                                 ;DINER
		call Crlf
		call Crlf
    mov edx,OFFSET DINNER0                             ;DINER ITEMS DISPLAY
	 call WriteString
	 call Crlf
      mov edx,OFFSET DINNER1    
	 call WriteString
	 call Crlf
	  mov edx,OFFSET DINNER2	
	 call WriteString
	 call Crlf	
	  mov edx,OFFSET DINNER3
	 call WriteString
	 call Crlf
	  mov edx,OFFSET DINNER4	
	 call WriteString
	  call Crlf
	  mov edx,OFFSET DINNER5	
	 call WriteString
	  call Crlf 
	  mov edx,OFFSET DINNER6	
	 call WriteString
	  call Crlf
	  mov edx,OFFSET DINNER7	
	 call WriteString
	  call Crlf
	  mov edx,OFFSET DINNER8	
	 call WriteString
	  call Crlf
	  mov edx,OFFSET DINNER9	
	 call WriteString
	  call Crlf                                      ;DINER ITEMS DISPLAY END

	   mov edx,OFFSET CHOICE	                     ;INPUT CHOICE
	 call WriteString
	 call ReadDec
	 mov num3,eax
	 call Crlf
	 
	 CMP num3,1                                      ;COMPARE CHOICE
     Je  TIBSS
	 jmp comdi1

comdi1:
	CMP num3,2
    Je  KIKILEE
	jmp comdi2
comdi2:
	CMP num3,3
	Je  SHIROWOTT
	jmp comdi3

comdi3:
	CMP num3,4
	Je  DOROWOTT
	jmp comdi4
	
comdi4:
	CMP num3,5
	Je  BIFFBURGERR
	jmp comdi5

comdi5:
	CMP num3,6
	Je   PLAINRICEE
	jmp comdi6

comdi6:
	CMP num3,7
	Je   PIZAA
	jmp comdi7

comdi7:
	CMP num3,7
	Je   ARUSTO
	jmp done                                           ;COMPARE CHOICE ENDS 


TIBSS:                                                 ;DINER FUNCTIONS
	mov edx,offset BORDER
	call writestring
	mov eax, 90
	jmp CALCULATE
KIKILEE:
	mov edx,offset BORDER
	call writestring
	mov eax, 90
	jmp CALCULATE

SHIROWOTT:
	mov edx,offset BORDER
	call writestring
	mov eax, 50
	jmp CALCULATE

DOROWOTT:
	mov edx,offset BORDER
	call writestring
	mov eax, 200
	jmp CALCULATE

BIFFBURGERR:
	mov edx,offset BORDER
	call writestring
	mov eax, 130
	jmp CALCULATE

PLAINRICEE:
	mov edx,offset BORDER
	call writestring
	mov eax, 100
	jmp CALCULATE

PIZAA:
	mov edx,offset BORDER
	call writestring
	mov eax, 130
	jmp CALCULATE

ARUSTO:
	mov edx,offset BORDER
	call writestring
	mov eax, 50
	jmp CALCULATE                                      ;DINER FUNCTION ENDS HEAR

  DRINK:                                     ;DRINK
  		call Crlf
  		call Crlf
     mov edx,OFFSET DRINK0                              ;DRINK ITEMS DISPALY
	 call WriteString
	 call Crlf
     mov edx,OFFSET DRINK1    
	 call WriteString
	 call Crlf
	  mov edx,OFFSET DRINK2	
	 call WriteString
	 call Crlf	
	  mov edx,OFFSET DRINK3
	 call WriteString
	 call Crlf
	  mov edx,OFFSET DRINK4	
	 call WriteString
	  call Crlf
	  mov edx,OFFSET DRINK5	
	 call WriteString
	  call Crlf 
	  mov edx,OFFSET DRINK6	
	 call WriteString
	  call Crlf
	  mov edx,OFFSET DRINK7	
	 call WriteString
	  call Crlf
	   mov edx,OFFSET DRINK8	
	   call WriteString
	  call Crlf                                         ;DRINK ITEMS DISPLAY ENDS

	  mov edx,OFFSET CHOICE	                            ;INPUT CHOICE
	 call WriteString
	 call ReadDec
	 mov num4,eax
	 call Crlf
	 
	 CMP num4,1                                          ;COMPARE CHOICE
     Je  SOFTDRINKK
	 jmp comdr1

comdr1:
	CMP num4,2
    Je  BEER
	jmp comdr2
comdr2:
	CMP num4,3
	Je  DRAFT
	jmp comdr3

comdr3:
	CMP num4,4
	Je  WATER
	jmp comdr4
	
comdr4:
	CMP num4,5
	Je  MALTA
	jmp comdr5

comdr5:
	CMP num4,6
	Je   WINE
	jmp comdr6

comdr6:
	CMP num4,7
	Je   WISKY
	jmp done                                    ;COMPARE CHOICE ENDS

	   
SOFTDRINKK:                                    ;DRINK FUNCTIONS    
	mov edx,offset BORDER
	call writestring
	call Crlf
	mov eax, 30
	mov edx,offset AMOUNT
    call writestring
    mov price,eax
    call readint
    mov quantity,eax
    mov  eax,quantity
    imul eax,price
    add all, eax
    call Crlf
	jmp total
BEER:
	mov edx,offset BORDER
	call writestring
	mov eax, 40
	jmp total

DRAFT:
	mov edx,offset BORDER
	call writestring
	call Crlf
	mov eax, 30
	mov edx,offset AMOUNT
    call writestring
    mov price,eax
    call readint
    mov quantity,eax
    mov  eax,quantity
    imul eax,price
    add all, eax
    call Crlf
	jmp total

WATER:
	mov edx,offset BORDER
	call writestring
	call Crlf
	mov eax, 20
	mov edx,offset AMOUNT
    call writestring
    mov price,eax
    call readint
    mov quantity,eax
    mov  eax,quantity
    imul eax,price
    add all, eax
    call Crlf
	jmp total

MALTA:
	mov edx,offset BORDER
	call writestring
	call Crlf
	mov eax, 40
	mov edx,offset AMOUNT
    call writestring
    mov price,eax
    call readint
    mov quantity,eax
    mov  eax,quantity
    imul eax,price
    add all, eax
    call Crlf
	jmp total

WINE:
	mov edx,offset BORDER
	call writestring
	call Crlf
	mov eax, 120
	mov edx,offset AMOUNT
    call writestring
    mov price,eax
    call readint
    mov quantity,eax
    mov  eax,quantity
    imul eax,price
    add all, eax
    call Crlf
	jmp total

WISKY:
	mov edx,offset BORDER
	call writestring
	call Crlf
	mov eax, 400
	mov edx,offset AMOUNT
    call writestring
    mov price,eax
    call readint
    mov quantity,eax
    mov  eax,quantity
    imul eax,price
    add all, eax
    call Crlf
	jmp total                                        ;DRINK FUNCTION ENDS
	                         

CALCULATE:                                          ;CALCULATE PRICES
  call Crlf
  mov edx,offset AMOUNT
  call writestring
  mov price,eax
  call readint                                      ;INPUT AMOUNT
  mov quantity,eax
  mov  eax,quantity
  imul eax,price
  add all, eax
  call Crlf
   mov edx,offset DRINKOPTION                        ;DISPLAY ADD DRINK
  call writestring
  call Crlf
  mov edx,offset CHOICE                              ;INPUT CHOICE
  call writestring

	 call ReadInt 
	mov opt,eax

	 CMP opt,1
     je  DRINK
	 jmp total

 total:                                             ;DISPLAY TOTAL PRICE
		mov edx,offset TOTALPRICE
		mov  eax,all
		call Crlf
		call writestring
		call writedec
		call crlf
		mov edx,offset LINE
        call writestring
        call Crlf
		call waitmsg
		jmp done
	  done:
	  call Crlf
	  call waitmsg
	  exit
main ENDP
END main                                                ;END OF THE PROGRAM
