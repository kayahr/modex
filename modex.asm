.386

assume cs:code

code segment use16 byte private 'code'

public initx
public donex
public putpixel
public getpixel
public line
public hline
public dline
public box
public fillbox
public circle
public fillcircle
public getpalette
public enter400
public leave400
public status400
public clearx
public setapage
public getapage
public setvpage
public getvpage
public switchpage
public waitretrace
public imagesize
public getimage
public putimage
public putsprite
public openfont
public closefont
public textwidth
public textheight
public printxy
public settextstyle
public textstyle
public textbgcolor
public textfgcolor
public usefont
public sinus
public cosinus

extrn openfile: far
extrn closefile: far
extrn filesize: far
extrn getmem: far
extrn freemem: far
extrn readfile: far

sintab dw 0,   286,   572,   857,  1143,  1428,  1713,  1997,  2280,  2563
  dw   2845,  3126,  3406,  3686,  3964,  4240,  4516,  4790,  5063,  5334
  dw   5604,  5872,  6138,  6402,  6664,  6924,  7182,  7438,  7692,  7943
  dw   8192,  8438,  8682,  8923,  9162,  9397,  9630,  9860, 10087, 10311
  dw  10531, 10749, 10963, 11174, 11381, 11585, 11786, 11982, 12176, 12365
  dw  12551, 12733, 12911, 13085, 13255, 13421, 13583, 13741, 13894, 14044
  dw  14189, 14330, 14466, 14598, 14726, 14849, 14968, 15082, 15191, 15296
  dw  15396, 15491, 15582, 15668, 15749, 15826, 15897, 15964, 16026, 16083
  dw  16135, 16182, 16225, 16262, 16294, 16322, 16344, 16362, 16374, 16382
  dw  16384, 16382, 16374, 16362, 16344, 16322, 16294, 16262, 16225, 16182
  dw  16135, 16083, 16026, 15964, 15897, 15826, 15749, 15668, 15582, 15491
  dw  15396, 15296, 15191, 15082, 14968, 14849, 14726, 14598, 14466, 14330
  dw  14189, 14044, 13894, 13741, 13583, 13421, 13255, 13085, 12911, 12733
  dw  12551, 12365, 12176, 11982, 11786, 11585, 11381, 11174, 10963, 10749
  dw  10531, 10311, 10087,  9860,  9630,  9397,  9162,  8923,  8682,  8438
  dw   8192,  7943,  7692,  7438,  7182,  6924,  6664,  6402,  6138,  5872
  dw   5604,  5334,  5063,  4790,  4516,  4240,  3964,  3686,  3406,  3126
  dw   2845,  2563,  2280,  1997,  1713,  1428,  1143,   857,   572,   286
  dw      0,  -286,  -572,  -857, -1143, -1428, -1713, -1997, -2280, -2563
  dw  -2845, -3126, -3406, -3686, -3964, -4240, -4516, -4790, -5063, -5334
  dw  -5604, -5872, -6138, -6402, -6664, -6924, -7182, -7438, -7692, -7943
  dw  -8192, -8438, -8682, -8923, -9162, -9397, -9630, -9860,-10087,-10311
  dw -10531,-10749,-10963,-11174,-11381,-11585,-11786,-11982,-12176,-12365
  dw -12551,-12733,-12911,-13085,-13255,-13421,-13583,-13741,-13894,-14044
  dw -14189,-14330,-14466,-14598,-14726,-14849,-14968,-15082,-15191,-15296
  dw -15396,-15491,-15582,-15668,-15749,-15826,-15897,-15964,-16026,-16083
  dw -16135,-16182,-16225,-16262,-16294,-16322,-16344,-16362,-16374,-16382
  dw -16384,-16382,-16374,-16362,-16344,-16322,-16294,-16262,-16225,-16182
  dw -16135,-16083,-16026,-15964,-15897,-15826,-15749,-15668,-15582,-15491
  dw -15396,-15296,-15191,-15082,-14968,-14849,-14726,-14598,-14466,-14330
  dw -14189,-14044,-13894,-13741,-13583,-13421,-13255,-13085,-12911,-12733
  dw -12551,-12365,-12176,-11982,-11786,-11585,-11381,-11174,-10963,-10749
  dw -10531,-10311,-10087, -9860, -9630, -9397, -9162, -8923, -8682, -8438
  dw  -8192, -7943, -7692, -7438, -7182, -6924, -6664, -6402, -6138, -5872
  dw  -5604, -5334, -5063, -4790, -4516, -4240, -3964, -3686, -3406, -3126
  dw  -2845, -2563, -2280, -1997, -1713, -1428, -1143,  -857,  -572,  -286
  dw      0,   286,   572,   857,  1143,  1428,  1713,  1997,  2280,  2563
  dw   2845,  3126,  3406,  3686,  3964,  4240,  4516,  4790,  5063,  5334
  dw   5604,  5872,  6138,  6402,  6664,  6924,  7182,  7438,  7692,  7943
  dw   8192,  8438,  8682,  8923,  9162,  9397,  9630,  9860, 10087, 10311
  dw  10531, 10749, 10963, 11174, 11381, 11585, 11786, 11982, 12176, 12365
  dw  12551, 12733, 12911, 13085, 13255, 13421, 13583, 13741, 13894, 14044
  dw  14189, 14330, 14466, 14598, 14726, 14849, 14968, 15082, 15191, 15296
  dw  15396, 15491, 15582, 15668, 15749, 15826, 15897, 15964, 16026, 16083
  dw  16135, 16182, 16225, 16262, 16294, 16322, 16344, 16362, 16374, 16382
  font dd 0
  txtstyle db 0
  txtfgcolor db 15
  txtbgcolor db 0


initx proc far
  mov ax,19
  int 16                              ; Mode 19 (320 x 200 x 256) einschalten
  mov dx,974                                           ; Port-Adresse des GDC
  mov al,5                                                ; GDC-Mode-Register
  out dx,al
  inc dx
  in al,dx
  and al,239
  out dx,al                                      ; Odd/Even Modus ausschalten
  dec dx
  mov al,6                                           ; Miscellaneous-Register
  out dx,al
  inc dx
  in al,dx
  and al,253
  out dx,al                                      ; Odd/Even Modus ausschalten
  mov dx,964                                            ; Port-Adresse des TS
  mov al,4                                             ; Memory Mode-Register
  out dx,al
  inc dx
  in al,dx
  and al,247
  or al,4
  out dx,al                          ; Chain 4- und Odd/Even-Mode ausschalten
  mov ax,40960
  mov es,ax
  mov gs,ax                                    ; Grafiksegment initialisieren
  xor di,di
  xor ax,ax
  mov cx,32768
  rep stosw                                        ; Alle vier Pages loeschen
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,20                                     ; UnderLine Location-Register
  out dx,al
  inc dx
  in al,dx
  and al,191
  out dx,al                                ; Doubleword Adressing ausschalten
  dec dx
  mov al,23                                              ; CRTC-Mode Register
  out dx,al
  inc dx
  in al,dx
  or al,64
  out dx,al                                           ; Byte Mode einschalten
  ret
initx endp

donex proc far
  mov ax,3                            ; Mode 3 (80 x 25 Farbtext) einschalten
  int 16
  ret
donex endp

putpixel proc far
arg c:word, y:word, x:word=asize;
  enter 0,0
  mov bx,x
  mov cl,bl
  and cl,3                   ; Die unteren zwei Byte geben die Planenummer an
  mov ah,1
  shl ah,cl                                              ; Planebit ermitteln
  mov dx,964                                            ; Port-Adresse des TS
  mov al,2                                        ; Write Plane Mask-Register
  out dx,ax                    ; Schreibzugriff auf ermittelte Plane zulassen
  shr bx,2                                               ; X-Offset ermitteln
  mov cx,y
  mov ax,80
  mul cx                                                 ; Y-Offset ermitteln
  add bx,ax                                                ; Offsets addieren
  mov al,byte ptr c
  mov gs:[bx],al
  leave
  ret asize
putpixel endp

getpixel proc far
arg y: word, x: word=asize;
  enter 0,0
  mov bx,x
  mov ah,bl
  and ah,3                   ; Die unteren zwei Byte geben die Planenummer an
  mov dx,974                                           ; Port-Adresse des GDC
  mov al,4                                       ; Read Plane Select-Register
  out dx,ax                       ; Lesezugriff auf ermittelte Plane zulassen
  shr bx,2                                   ; X-Offset in der Page ermitteln
  mov cx,y
  mov ax,80
  mul cx                                     ; Y-Offset in der Page ermitteln
  add bx,ax                                                ; Offsets addieren
  mov al,gs:[bx]                                                ; Punkt lesen
  leave
  ret asize
getpixel endp

line proc far
arg c:word, y2:word, x2:word, y1:word, x1:word=asize;
local deltax:word, deltay:word=lsize;
  enter lsize,0
  mov ax,x1
  sub ax,x2                                  ; Abstand der X-Werte ausrechnen
  jns short line1                                              ; Wenn negativ
  neg ax                                           ; dann Vorzeichen umdrehen
  mov dl,1                                        ; und Steigung auf 1 setzen
  jmp short line2
line1:
  mov dl,255                                   ; Sonst Steigung auf -1 setzen
line2:
  mov deltax,ax                                 ; Abstand in DeltaX speichern
  mov ax,y1
  sub ax,y2                                  ; Abstand der Y-Werte ausrechnen
  jns short line3                                              ; Wenn negativ
  neg ax                                           ; dann Vorzeichen umdrehen
  mov dh,1                                        ; und Steigung auf 1 setzen
  jmp short line4
line3:
  mov dh,255                                   ; sonst Steigung auf -1 setzen
line4:
  mov deltay,ax                                 ; Abstand in DeltaY speichern
  mov cx,deltax
  cmp ax,cx                                        ; Wenn deltay>deltax, dann
  jg short line7                                       ; Linienschleife y benutzen
  shl ax,1                                  ; sonst Linienschleife x benutzen
  sub ax,cx
  mov bx,ax                                      ; Fehlerterm=deltay*2-deltax
  inc cx                          ; Linienschleife x deltax+1 mal durchlaufen
line5:
  pusha
  push x1
  push y1
  push c
  call putpixel                                                ; Pixel setzen
  popa
  or bx,bx                                         ; Wenn Fehlterterm positiv
  js short line6
  mov al,dh
  cbw
  add y1,ax                            ; dann Y-Position um einen verschieben
  mov ax,deltax
  shl ax,1
  sub bx,ax                              ; und Fehlerterm=Fehlerterm-deltax*2
line6:
  mov ax,deltay
  shl ax,1
  add bx,ax                                 ; Fehlerterm=Fehlterterm+deltay*2
  mov al,dl
  cbw
  add x1,ax                                 ; X-Position um einen verschieben
  loop line5                                          ; Ende Linienschleife x
  jmp short line10                                          ; Routine beenden
line7:
  xchg ax,cx
  shl ax,1
  sub ax,cx
  mov bx,ax                                      ; Fehlerterm=deltax*2-deltay
  inc cx                          ; Linienschleife y deltay+1 mal durchlaufen
line8:
  pusha
  push x1
  push y1
  push c
  call putpixel                                                ; Pixel setzen
  popa
  or bx,bx                                         ; Wenn Fehlterterm positiv
  js short line9
  mov al,dl
  cbw
  add x1,ax                            ; dann X-Position um einen verschieben
  mov ax,deltay
  shl ax,1
  sub bx,ax                              ; und Fehlerterm=Fehlerterm-deltay*2
line9:
  mov ax,deltax
  shl ax,1
  add bx,ax                                 ; Fehlerterm=Fehlterterm+deltax*2
  mov al,dh
  cbw
  add y1,ax                                 ; Y-Position um einen verschieben
  loop line8                                          ; Ende Linienschleife y
line10:
  leave
  ret asize
line endp

hline proc far
arg c:word, x2:word, y:word, x1:word=asize;
  enter 0,0
  push di
  push si
  mov ax,x1
  cmp ax,x2
  jle short hline1                   ; Wenn X1 groesser als x2, dann tauschen
  xchg ax,x2
  mov x1,ax
hline1:
  mov ax,gs
  mov es,ax
  mov di,x1
  or di,di
  jz short hline2
  dec di
  shr di,2
  inc di                       ; Ersten voll ausgemalten 4 er-Block berechnen
hline2:
  mov cx,x2
  inc cx
  shr cx,2                    ; Letzten voll ausgemalten 4 er-Block berechnen
  sub cx,di
  js short hline3  ; Wenn letzte links vom ersten liegt, dann kein Mittelteil
  mov dx,964                                            ; Port-Adresse des TS
  mov ah,15
  mov al,2                                        ; Write Plane Mask-Register
  out dx,ax                         ; Schreibzugriff auf alle Planes zulassen
  mov ax,y
  mov bx,80
  mul bx                           ; Y-Position zum Offset in DI dazuaddieren
  add di,ax
  mov ax,c
  rep stosb                                             ; Mittelteil zeichnen
hline3:
  mov cx,x1
  mov si,cx
  shr si,2
  shl si,2
  sub cx,si                      ; Anzahl der Pixel im Anfangsblock ermitteln
  shr si,2
  mov ax,65280
  rol ax,cl                           ; Bitmuster fuer Anfangsblock ermitteln
  mov bl,ah                                               ; und in bl sichern
  mov cx,x2
  mov di,cx
  shr di,2
  shl di,2
  sub cx,di                         ; Anzahl der Pixel im Endeblock ermitteln
  shr di,2
  mov ax,496
  rol ax,cl                              ; Bitmuster fuer Endeblock ermitteln
  mov bh,ah                                               ; und in bh sichern
  mov ax,y
  mov cx,80
  mul cx
  add di,ax
  add si,ax                                         ; Y-Position dazuaddieren
  mov dx,964                                            ; Port-Adresse des TS
  mov ax,x1
  shr ax,2
  shl ax,2                                     ; Anfangs-4 er-Block berechnen
  mov cx,x2
  shr cx,2
  shl cx,2                                        ; Ende-4 er-Block berechnen
  cmp ax,cx          ; Wenn Anfang und Ende der Linie nicht im gleichen Block
  jl short hline4                   ; dann zwei Linien ziehen, sonst nur eine
  mov al,2                                        ; Write Plane Mask-Register
  and bh,bl               ; Neue Bitmaske aus Anfangs- und Endmaske ermitteln
  mov ah,bh
  out dx,ax                          ; Zugriff auf ermittelte Planes zulassen
  mov cx,c
  mov gs:[si],cl                                               ; Pixel setzen
  jmp short hline5                                                     ; Ende
hline4:
  mov al,2                                        ; Write Plane Mask-Register
  mov ah,bl
  out dx,ax                    ; Schreibzugriff auf gewaehlte Planes zulassen
  mov cx,c
  mov gs:[si],cl                              ; Pixel des Anfangsblock setzen
  mov ah,bh
  out dx,ax
  mov gs:[di],cl                                 ; Pixel des Endblocks setzen
hline5:
  pop si
  pop di
  leave
  ret asize
hline endp

box proc far
arg c:word, y2: word, x2:word, y1:word, x1:word=asize;
  enter 0,0
  push x1
  push y1
  push x2
  push c
  call hline
  push x1
  push y2
  push x2
  push c
  call hline
  push x1
  push y1
  push x1
  push y2
  push c
  call line
  push x2
  push y1
  push x2
  push y2
  push c
  call line
  leave
  ret asize
box endp

fillbox proc far
arg c:word, y2: word, x2:word, y1:word, x1:word=asize;
  enter 0,0
  mov ax,y2
  cmp ax,y1
  jge short fillbox1
  xchg ax,y1                  ; Y-Koordinaten in richtige Reihenfolge bringen
  mov y2,ax
fillbox1:
  push x1
  push y1
  push x2
  push c
  call hline
  inc y1
  mov ax,y2
  cmp y1,ax
  jle fillbox1
  leave
  ret asize
fillbox endp

getpalette proc far
arg pal:word=asize;
  enter 0,0
  mov bx,ds
  mov es,bx
  mov di,pal                                                  ; Adresse holen
  mov cx,256*3                                          ; Anzahl Farben holen
  xor al,al
  mov dx,967               ; External Palette RAM, Pixel Read Adress-Register
  out dx,al                                                ; ab Farbe 0 lesen
  mov dx,969                                     ; Pixel Color Value-Register
  rep insb                                      ; Alle Farben an VGA schicken
  leave
  ret asize
getpalette endp

enter400 proc far
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,9                                      ; Maximum Row Adress-Register
  out dx,al
  inc dx
  in al,dx
  and al,96
  out dx,al                                   ; Anzahl der Zeilenkopien auf 0
  ret
enter400 endp

leave400 proc far
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,9                                      ; Maximum Row Adress-Register
  out dx,al
  inc dx
  in al,dx
  and al,96
  or al,1
  out dx,al                                   ; Anzahl der Zeilenkopien auf 1
  ret
leave400 endp

status400 proc far
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,9                                      ; Maximum Row Adress-Register
  out dx,al
  inc dx
  in al,dx
  and al,1                                ; Anzahl der Zeilenkopien ermitteln
  xor al,1
  ret
status400 endp

clearx proc far
  push di
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,9                                      ; Maximum Row Adress-Register
  out dx,al
  inc dx
  in al,dx                                ; Anzahl der Zeilenkopien ermitteln
  mov cx,8000                                                 ; 64000/4 Words
  and al,15
  jnz short clearx1
  shl cx,1                    ; Wenn Zeilenkopien=0, dann zwei Pages loeschen
clearx1:
  mov dx,964                                            ; Port-Adresse des TS
  mov ah,15
  mov al,2                                        ; Write Plane Mask-Register
  out dx,ax                         ; Schreibzugriff auf alle Planes zulassen
  mov ax,gs
  mov es,ax                                            ; Grafiksegment setzen
  mov di,0                                                     ; Offset auf 0
  xor ax,ax                                             ; Mit Farbe 0 fuellen
  rep stosw                                                   ; Page loeschen
  pop di
  ret
clearx endp

setapage proc far
arg apage: word=asize
  enter 0,0
  mov ax,1000
  mov bx,apage
  mul bx
  mov bx,40960
  or ax,bx
  mov gs,ax
  leave
  ret asize
setapage endp

getapage proc far
  mov ax,gs
  and ax,4095
  xor dx,dx
  mov bx,1000
  div bx
  ret
getapage endp

setvpage proc far
arg vpage: word=asize
  enter 0,0
  mov ax,16000
  mov cx,vpage
  mul cx
  mov cx,ax                                ; Startadresse aus vpage berechnen
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,12                            ; Linear Starting Adress High-Register
  mov ah,ch                                                ; Bits 15-8 setzen
  out dx,ax
  inc al                                ; Linear Starting Adress Low-Register
  mov ah,cl                                                 ; Bits 7-0 setzen
  out dx,ax
  leave
  ret asize
setvpage endp

getvpage proc far
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,12                            ; Linear Starting Adress High-Register
  out dx,al
  inc dx
  in al,dx                                               ; High-Byte einlesen
  mov ah,al
  dec dx
  mov al,13                             ; Linear Starting Adress Low-Register
  out dx,al
  inc dx
  in al,dx                                                ; Low-Byte einlesen
  xor dx,dx
  mov cx,16000
  div cx
  ret
getvpage endp

switchpage proc far
arg page1: word, page2: word=asize
  enter 0,0
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,12                            ; Linear Starting Adress High-Register
  out dx,al
  inc dx
  in al,dx                                               ; High-Byte einlesen
  mov ah,al
  dec dx
  mov al,13                             ; Linear Starting Adress Low-Register
  out dx,al
  inc dx
  in al,dx                                                ; Low-Byte einlesen
  xor dx,dx
  mov cx,16000
  div cx
  mov cx,page1
  mov bx,page2
  cmp ax,cx
  jne short switchpage1  ; Wenn aktuelle Page<>Page1, dann auf Page1 schalten
  xchg cx,bx
switchpage1:
  mov ax,1000
  mul bx
  mov bx,40960
  or ax,bx
  mov gs,ax                                             ; Aktive Seite setzen
  mov ax,16000
  mul cx
  mov cx,ax                                          ; Startadresse berechnen
  mov dx,980                                          ; Port-Adresse des CRTC
  mov al,12                            ; Linear Starting Adress High-Register
  mov ah,ch                                                ; Bits 15-8 setzen
  out dx,ax
  inc al                                ; Linear Starting Adress Low-Register
  mov ah,cl                                                 ; Bits 7-0 setzen
  out dx,ax
  leave
  ret asize
switchpage endp

waitretrace proc far
  mov dx,986                                        ; Input Status Register 1
waitretrace1:
  in al,dx                        ; Bit 3 wird 0, wenn Strahl beim Bildaufbau
  test al,8
  jnz waitretrace1
waitretrace2:
  in al,dx                                       ; Bit 3 wird 1, wenn Retrace
  test al,8
  jz waitretrace2
  ret
waitretrace endp

imagesize proc far
arg y2:word, x2:word, y1:word, x1:word=asize
  enter 0,0
  mov ax,x2
  cmp ax,x1
  jge short imagesize1
  xchg ax,x1                  ; X-Koordinaten in richtige Reihenfolge bringen
  mov x2,ax
imagesize1:
  mov ax,y2
  cmp ax,y1
  jge short imagesize2
  xchg ax,y1                  ; Y-Koordinaten in richtige Reihenfolge bringen
  mov y2,ax
imagesize2:
  sub ax,y1
  inc ax
  mov cx,x2
  sub cx,x1
  inc cx
  mul cx
  add ax,4
  leave
  ret asize
imagesize endp

getimage proc far
arg buffer:dword, y2:word, x2:word, y1:word, x1:word=asize
local breite:word, hoehe:word=lsize
  enter lsize,0
  push ds
  mov ax,x2
  cmp ax,x1
  jge short getimage1
  xchg ax,x1                  ; X-Koordinaten in richtige Reihenfolge bringen
  mov x2,ax
getimage1:
  sub ax,x1
  inc ax
  mov breite,ax                                  ; Breite in breite speichern
  mov ax,y2
  cmp ax,y1
  jge short getimage2
  xchg ax,y1                  ; Y-Koordinaten in richtige Reihenfolge bringen
  mov y2,ax
getimage2:
  sub ax,y1
  inc ax
  mov hoehe,ax                                     ; Hoehe in hoehe speichern
  mov ax,word ptr buffer+2
  mov es,ax
  mov di,word ptr buffer                           ; Pointer ES:DI auf Buffer
  mov ax,breite
  stosw                                          ; Breite in Buffer schreiben
  mov ax,hoehe
  stosw                                            ; Hoehe in Buffer schreiben
  mov ax,gs
  mov ds,ax                                        ; Bildschirmsegment setzen
  mov ax,80
  mov cx,y1
  mul cx
  mov y1,ax                                         ; Offset von y1 berechnen
  mov cx,breite
  cmp cx,4
  jle short getimage3
  mov cx,4
getimage3:
  push cx
  mov ax,x1
  mov ah,al
  and ah,3                   ; Die unteren zwei Byte geben die Planenummer an
  mov dx,974                                           ; Port-Adresse des GDC
  mov al,4                                       ; Read Plane Select-Register
  out dx,ax                       ; Lesezugriff auf ermittelte Plane zulassen
  mov ax,breite
  dec ax
  shr ax,2
  inc ax
  mov dx,ax                 ; Anzahl der Bytes pro Plane und Zeile ausrechnen
  mov ax,x1
  shr ax,2                                               ; X-Offset berechnen
  mov bx,y1
  mov cx,hoehe
getimage4:
  push cx
  mov si,ax
  add si,bx
  mov cx,dx
  rep movsb
  add bx,80
  pop cx
  loop getimage4
  inc x1
  dec breite
  pop cx
  loop getimage3
  pop ds
  leave
  ret asize
getimage endp

putimage proc far
arg buffer:dword, y:word, x:word=asize
local breite:word, hoehe:word=lsize
  enter lsize,0
  push ds
  mov ax,word ptr buffer+2
  mov ds,ax
  mov si,word ptr buffer                           ; Pointer ES:DI auf Buffer
  lodsw
  mov breite,ax                                     ; Breite aus Buffer lesen
  lodsw
  mov hoehe,ax                                       ; Hoehe aus Buffer lesen
  mov ax,gs
  mov es,ax                                        ; Bildschirmsegment setzen
  mov ax,80
  mov cx,y
  mul cx
  mov y,ax                                          ; Offset von y1 berechnen
  mov cx,breite
  cmp cx,4
  jle short putimage1
  mov cx,4
putimage1:
  push cx
  mov cx,x
  and cl,3                   ; Die unteren zwei Byte geben die Planenummer an
  mov ah,1
  shl ah,cl                                              ; Planebit ermitteln
  mov dx,964                                            ; Port-Adresse des TS
  mov al,2                                        ; Write Plane Mask-Register
  out dx,ax                    ; Schreibzugriff auf ermittelte Plane zulassen
  mov ax,breite
  dec ax
  shr ax,2
  inc ax
  mov dx,ax                 ; Anzahl der Bytes pro Plane und Zeile ausrechnen
  mov ax,x
  shr ax,2                                               ; X-Offset berechnen
  mov bx,y
  mov cx,hoehe
putimage2:
  push cx
  mov di,ax
  add di,bx
  mov cx,dx
  rep movsb
  add bx,80
  pop cx
  loop putimage2
  inc x
  dec breite
  pop cx
  loop putimage1
  pop ds
  leave
  ret asize
putimage endp

putsprite proc far
arg buffer:dword, y:word, x:word=asize
local breite:word, hoehe:word=lsize
  enter lsize,0
  push ds
  mov ax,word ptr buffer+2
  mov ds,ax
  mov si,word ptr buffer                           ; Pointer ES:DI auf Buffer
  lodsw
  mov breite,ax                                     ; Breite aus Buffer lesen
  lodsw
  mov hoehe,ax                                       ; Hoehe aus Buffer lesen
  mov ax,gs
  mov es,ax                                        ; Bildschirmsegment setzen
  mov ax,80
  mov cx,y
  mul cx
  mov y,ax                                          ; Offset von y1 berechnen
  mov cx,breite
  cmp cx,4
  jle short putsprite1
  mov cx,4
putsprite1:
  push cx
  mov cx,x
  and cl,3                   ; Die unteren zwei Byte geben die Planenummer an
  mov ah,1
  shl ah,cl                                              ; Planebit ermitteln
  mov dx,964                                            ; Port-Adresse des TS
  mov al,2                                        ; Write Plane Mask-Register
  out dx,ax                    ; Schreibzugriff auf ermittelte Plane zulassen
  mov ax,breite
  dec ax
  shr ax,2
  inc ax
  mov dx,ax                 ; Anzahl der Bytes pro Plane und Zeile ausrechnen
  mov ax,x
  shr ax,2                                               ; X-Offset berechnen
  mov bx,y
  mov cx,hoehe
putsprite2:
  push cx
  mov di,ax
  add di,bx
  mov cx,dx
  push ax
putsprite3:
  lodsb
  or al,al
  jz short putsprite4
  stosb
  jmp short putsprite5
putsprite4:
  inc di
putsprite5:
  loop putsprite3
  pop ax
  add bx,80
  pop cx
  loop putsprite2
  inc x
  dec breite
  pop cx
  loop putsprite1
  pop ds
  leave
  ret asize
putsprite endp

openfont proc far
arg buffer:dword, fontname:dword=asize
  enter 0,0
  push cs
  push offset openfonthandle
  push word ptr fontname+2
  push word ptr fontname
  push 64
  call openfile                                    ; Zeichensatzdatei oeffnen
  or ax,ax
  jnz short openfont1              ; Wenn Fehler beim Oeffnen, dann abbrechen
  mov ax,cs:openfonthandle
  push cs:openfonthandle
  call filesize                                       ; Dateilaenge ermitteln
  or dx,dx
  js short openfont1                            ; Wenn Fehler, dann abbrechen
  mov cs:openfontsize,ax                                ; Dateilaenge sichern

  mov ax,word ptr buffer+2
  mov bx,word ptr buffer

  push word ptr buffer+2
  push word ptr buffer
  push 0
  push cs:openfontsize
  call getmem                                          ; Speicher reservieren
  or ax,ax
  jnz short openfont1          ; Wenn Fehler beim reservieren, dann abbrechen
  push cs:openfonthandle
  les di,buffer
  les di,es:[di]
  mov word ptr font+2,es
  mov word ptr font,di
  push es
  push di
  push cs:openfontsize
  call readfile                                           ; Zeichensatz laden
  or ax,ax
  jnz short openfont1                           ; Wenn Fehler, dann abbrechen
  push cs:openfonthandle
  call closefile                                           ; Datei schliessen
  xor ax,ax
openfont1:
  leave
  ret asize
openfonthandle dw 0
openfontsize dw 0
openfont endp

closefont proc far
arg buffer:dword=asize
  enter 0,0
  push word ptr buffer+2
  push word ptr buffer
  call freemem                                           ; Speicher freigeben
  or ax,ax
  jnz short closefont1           ; Wenn Fehler, dann mit Fehlercode abbrechen
  xor ax,ax
  jmp short closefont2
closefont1:
  neg ax                            ; Fehlercode in negativen Bereich bringen
closefont2:
  leave
  ret asize
closefont endp

textwidth proc far
arg text:dword=asize
  enter lsize,0
  mov ax,word ptr text+2
  mov es,ax
  mov ax,word ptr text
  mov di,ax                                    ; Pointer DS:SI auf Textbuffer
  mov cl,es:[di]                                   ; Laenge des Strings lesen
  mov ax,0                                              ; Breite auf 0 setzen
  or cl,cl
  jz short textwidth2
  inc di
  xor ch,ch
textwidth1:
  mov bl,es:[di]                                              ; Zeichen lesen
  inc di
  xor bh,bh
  shl bx,1               ; Zeichen mit 2 multiplizieren, um Tabellenoffset zu
  mov si,bx
  add si,word ptr font                                            ; ermitteln
  mov bx,word ptr font+2
  mov fs,bx                               ; Pointer DS:SI auf Tabelleneintrag
  mov si,fs:[si]                               ; Pointer auf Buchstabenmatrix
  add ax,fs:[si]                    ; Zeichenbreite zur Gesamtbreite addieren
  loop textwidth1
textwidth2:
  leave
  ret asize
textwidth endp

textheight proc far
arg text:dword=asize
  enter lsize,0
  mov ax,word ptr text+2
  mov es,ax
  mov ax,word ptr text
  mov di,ax                                    ; Pointer DS:SI auf Textbuffer
  mov cl,es:[di]                                   ; Laenge des Strings lesen
  mov ax,0                                               ; Hoehe auf 0 setzen
  or cl,cl
  jz short textheight2
  inc di
  xor ch,ch
textheight1:
  mov bl,es:[di]                                              ; Zeichen lesen
  inc di
  xor bh,bh
  shl bx,1               ; Zeichen mit 2 multiplizieren, um Tabellenoffset zu
  mov si,bx
  add si,word ptr font                                            ; ermitteln
  mov bx,word ptr font+2
  mov fs,bx                               ; Pointer DS:SI auf Tabelleneintrag
  mov si,fs:[si]                               ; Pointer auf Buchstabenmatrix
  add si,2                    ; Breite ueberspringen um auf Hoehe zu gelangen
  mov bx,fs:[si]                                         ; Zeichenhoehe holen
  cmp bx,ax                                     ; Mit alter Hoehe vergleichen
  jbe short textheight2    ; Wenn kleiner oder gleich, dann naechstes Zeichen
  mov ax,bx                               ; Sonst neue maximale Hoehe sichern
textheight2:
  loop textheight1
textheight3:
  leave
  ret asize
textheight endp

printxy proc far
arg text:dword, y:word, x:word=asize
local breite:word, hoehe:word, tseg:word, tofs:word, x2:word=lsize
  enter lsize,0
  mov dl,byte ptr txtstyle
  and dl,3                    ; Pruefen ob X-Textausrichtung linksbuendig ist
  jz short printxya                            ; Wenn ja, Text sofort drucken
  push word ptr text+2
  push word ptr text
  call textwidth
  cmp dl,1                   ; Pruefen ob X-Textausrichtung Rechtsbuendig ist
  jne short printxyb
  dec ax
  sub x,ax
  jmp short printxya
printxyb:
  cmp dl,2                       ; Pruefen ob X-Textausrichtung Zentriert ist
  jne short printxya
  shr ax,1
  sub x,ax
printxya:
  mov dl,byte ptr txtstyle
  and dl,192                ; Pruefen ob Y-Textausrichtung Bottom-buendig ist
  jz short printxyc                            ; Wenn ja, Text sofort drucken
  push word ptr text+2
  push word ptr text
  call textheight
  cmp dl,64                    ; Pruefen ob Y-Textausrichtung Top-buendig ist
  jne short printxyd
  dec ax
  sub y,ax
  jmp short printxyc
printxyd:
  cmp dl,128                     ; Pruefen ob Y-Textausrichtung Zentriert ist
  jne short printxyc
  shr ax,1
  sub y,ax
printxyc:
  push ds                                              ; Datensegment sichern
  mov ax,x
  mov x2,ax                                              ; X-Position sichern
  mov ax,word ptr text+2
  mov ds,ax
  mov tseg,ax
  mov ax,word ptr text
  mov si,ax                                    ; Pointer DS:SI auf Textbuffer
  inc ax
  mov tofs,ax
  mov ax,gs
  mov es,ax                                        ; Bildschirmsegment setzen
  mov ax,80
  mov cx,y
  mul cx
  mov y,ax                                          ; Offset von y1 berechnen
  lodsb                                            ; Laenge des Strings lesen
  or al,al
  jz printxyx
  xor ah,ah
printxy0:
  push ax        ; Laenge als Zaehlervariable verwenden und auf Stack sichern
  mov ax,tseg
  mov ds,ax
  mov si,tofs                           ; Pointer DS:SI auf aktuelles Zeichen
  lodsb                                                       ; Zeichen lesen
  xor ah,ah
  inc tofs                                    ; Pointer auf naechstes Zeichen
  shl ax,1               ; Zeichen mit 2 multiplizieren, um Tabellenoffset zu
  mov si,ax
  add si,word ptr font                                         ; ermitteln
  mov ax,word ptr font+2
  mov ds,ax                               ; Pointer DS:SI auf Tabelleneintrag
  lodsw
  mov si,ax                                    ; Pointer auf Buchstabenmatrix
  mov ax,x2
  mov x,ax                                                ; X-Position setzen
  lodsw
  mov breite,ax                                     ; Breite aus Buffer lesen
  add x2,ax                     ; X-Position des naechsten Zeichens berechnen
  lodsw
  mov hoehe,ax                                       ; Hoehe aus Buffer lesen
  mov cx,breite
  cmp cx,4
  jle short printxy1
  mov cx,4
printxy1:
  push cx
  mov cx,x
  and cl,3                   ; Die unteren zwei Byte geben die Planenummer an
  mov ah,1
  shl ah,cl                                              ; Planebit ermitteln
  mov dx,964                                            ; Port-Adresse des TS
  mov al,2                                        ; Write Plane Mask-Register
  out dx,ax                    ; Schreibzugriff auf ermittelte Plane zulassen
  mov ax,breite
  dec ax
  shr ax,2
  inc ax
  mov dx,ax                 ; Anzahl der Bytes pro Plane und Zeile ausrechnen
  mov ax,x
  shr ax,2                                               ; X-Offset berechnen
  mov bx,y
  mov cx,hoehe
printxy2:
  push cx
  mov di,ax
  add di,bx
  mov cx,dx
  push ax
printxy3:
  lodsb
  mov ah,byte ptr txtstyle                           ; Textstyle in ah laden
  or al,al                         ; Befindet sich ein Pixel im Zeichensatz ?
  jnz short printxy4                                       ; Wenn nicht, dann
  test ah,32                  ; pruefen ob Transparent gezeichnet werden soll
  jz short printxy4                           ; Wenn nicht, dann Pixel setzen
  inc di                                                ; Sonst ueberspringen
  jmp short printxye
printxy4:
  test ah,4          ; Pruefen ob Default- oder Userfarbe benutzt werden soll
  jnz short printxy6                                   ; Wenn Userfarbe, dann
  cmp al,0                    ; pruefen ob Hintergrund- oder Vordergrundfarbe
  jne short printxy5
  mov al,byte ptr txtbgcolor
  jmp short printxy6
printxy5:
  mov al,byte ptr txtfgcolor
printxy6:
  stosb
printxye:
  loop printxy3
  pop ax
  add bx,80
  pop cx
  loop printxy2
  inc x
  dec breite
  pop cx
  loop printxy1
  pop ax
  dec ax
  jnz printxy0
printxyx:
  pop ds
  leave
  ret asize
printxy endp

settextstyle proc far
arg bgcolor:word, fgcolor:word, style:word=asize
  enter 0,0
  mov al,byte ptr bgcolor
  mov txtbgcolor,al
  mov al,byte ptr fgcolor
  mov txtfgcolor,al
  mov al,byte ptr style
  mov txtstyle,al
  leave
  ret asize
settextstyle endp

textstyle proc far
  mov al,txtstyle
  ret
textstyle endp

textfgcolor proc far
  mov al,txtfgcolor
  ret
textfgcolor endp

textbgcolor proc far
  mov al,txtbgcolor
  ret
textbgcolor endp

usefont proc far
arg buffer:dword=asize
  enter 0,0
  mov eax,buffer
  mov font,eax
  leave
  ret asize
usefont endp

sinus proc far
arg x:word=asize
  enter 0,0
  mov si,x
  shl si,1
  mov ax,sintab[si]
  leave
  ret asize
sinus endp

cosinus proc far
arg x:word=asize
  enter 0,0
  mov si,x
  add si,90
  shl si,1
  mov ax,sintab[si]
  leave
  ret asize
cosinus endp

circle proc far
arg c:word, ry:word, rx:word, y:word, x:word=asize
local px1:word, py1:word, px2:word, py2:word, mx1:word, my1:word, mx2:word, my2:word=lsize
  enter lsize,0
  mov cx,0
circle1:
  push cx
  mov ax,cx
  mov bx,20
  mul bx
  mov bx,ax
  mov ax,word ptr sintab[bx]
  mov bx,rx
  mul bx
  shrd ax,dx,14
  mov bx,x
  sub bx,ax
  add ax,x
  mov px1,ax
  mov mx1,bx                                 ; x1=x+sintab[z*20]*rx DIV 16384
  mov ax,cx
  mov bx,20
  mul bx
  mov bx,ax
  mov ax,word ptr sintab[bx+180]
  mov bx,ry
  mul bx
  shrd ax,dx,14
  mov bx,y
  sub bx,ax
  add ax,y
  mov py1,ax
  mov my1,bx                             ; y1=y+sintab[z*20+180]*ry DIV 16384
  mov ax,cx
  inc ax
  mov bx,20
  mul bx
  mov bx,ax
  mov ax,word ptr sintab[bx]
  mov bx,rx
  mul bx
  shrd ax,dx,14
  mov bx,x
  sub bx,ax
  add ax,x
  mov px2,ax
  mov mx2,bx                            ;  x2=x+sintab[(z+1)*20]*rx DIV 16384
  mov ax,cx
  inc ax
  mov bx,20
  mul bx
  mov bx,ax
  mov ax,word ptr sintab[bx+180]
  mov bx,ry
  mul bx
  shrd ax,dx,14
  mov bx,y
  sub bx,ax
  add ax,y
  mov py2,ax
  mov my2,bx                        ;  y2=x+sintab[(z+1)*20+180]*ry DIV 16384
  push px1
  push py1
  push px2
  push py2
  push c
  call line                                    ; Oberen linken Bogen zeichnen
  push mx1
  push my1
  push mx2
  push my2
  push c
  call line                                  ; Unteren rechten Bogen zeichnen
  push px1
  push my1
  push px2
  push my2
  push c
  call line                                   ; Oberen rechten Bogen zeichnen
  push mx1
  push py1
  push mx2
  push py2
  push c
  call line                                   ; Unteren linken Bogen zeichnen
  pop cx
  inc cx
  cmp cx,9
  jne circle1
  leave
  ret asize
circle endp

dline proc far
arg c:word, y2:word, x2:word, y1:word, x1:word, mx:word=asize
local deltax:word, deltay:word, oldy:word=lsize
  enter lsize,0
  mov ax,-1
  mov oldy,ax
  mov ax,x1
  sub ax,x2                                  ; Abstand der X-Werte ausrechnen
  jns short dline1                                             ; Wenn negativ
  neg ax                                           ; dann Vorzeichen umdrehen
  mov dl,1                                        ; und Steigung auf 1 setzen
  jmp short dline2
dline1:
  mov dl,255                                   ; Sonst Steigung auf -1 setzen
dline2:
  mov deltax,ax                                 ; Abstand in DeltaX speichern
  mov ax,y1
  sub ax,y2                                  ; Abstand der Y-Werte ausrechnen
  jns short dline3                                             ; Wenn negativ
  neg ax                                           ; dann Vorzeichen umdrehen
  mov dh,1                                        ; und Steigung auf 1 setzen
  jmp short dline4
dline3:
  mov dh,255                                   ; sonst Steigung auf -1 setzen
dline4:
  mov deltay,ax                                 ; Abstand in DeltaY speichern
  mov cx,deltax
  cmp ax,cx                                        ; Wenn deltay>deltax, dann
  jg short dline7                                 ; Linienschleife y benutzen
  shl ax,1                                  ; sonst Linienschleife x benutzen
  sub ax,cx
  mov bx,ax                                      ; Fehlerterm=deltay*2-deltax
  inc cx                          ; Linienschleife x deltax+1 mal durchlaufen
dline5:
  mov ax,y1
  cmp ax,oldy
  je short dline51
  mov oldy,ax
  pusha
  push x1
  push ax
  mov ax,x1
  mov bx,mx
  sub ax,bx
  sub bx,ax
  push bx                                                     ; x2=mx-(x1-mx)
  push c
  call hline                                                   ; Pixel setzen
  popa
dline51:
  or bx,bx                                         ; Wenn Fehlterterm positiv
  js short dline6
  mov al,dh
  cbw
  add y1,ax                            ; dann Y-Position um einen verschieben
  mov ax,deltax
  shl ax,1
  sub bx,ax                              ; und Fehlerterm=Fehlerterm-deltax*2
dline6:
  mov ax,deltay
  shl ax,1
  add bx,ax                                 ; Fehlerterm=Fehlterterm+deltay*2
  mov al,dl
  cbw
  add x1,ax                                 ; X-Position um einen verschieben
  loop dline5                                         ; Ende Linienschleife x
  jmp short dline10                                         ; Routine beenden
dline7:
  xchg ax,cx
  shl ax,1
  sub ax,cx
  mov bx,ax                                      ; Fehlerterm=deltax*2-deltay
  inc cx                          ; Linienschleife y deltay+1 mal durchlaufen
dline8:
  mov ax,y1
  cmp ax,oldy
  je short dline81
  mov oldy,ax
  pusha
  push x1
  push ax
  mov ax,x1
  mov bx,mx
  sub ax,bx
  sub bx,ax
  push bx                                                     ; x2=mx-(x1-mx)
  push c
  call hline                                                   ; Pixel setzen
  popa
dline81:
  or bx,bx                                         ; Wenn Fehlterterm positiv
  js short dline9
  mov al,dl
  cbw
  add x1,ax                            ; dann X-Position um einen verschieben
  mov ax,deltay
  shl ax,1
  sub bx,ax                              ; und Fehlerterm=Fehlerterm-deltay*2
dline9:
  mov ax,deltax
  shl ax,1
  add bx,ax                                 ; Fehlerterm=Fehlterterm+deltax*2
  mov al,dh
  cbw
  add y1,ax                                 ; Y-Position um einen verschieben
  loop dline8                                          ; Ende Linienschleife y
dline10:
  leave
  ret asize
dline endp

fillcircle proc far
arg c:word, ry:word, rx:word, y:word, x:word=asize
local px1:word, py1:word, px2:word, py2:word, my1:word, my2:word=lsize
  enter lsize,0
  mov cx,0
fillcircle1:
  push cx
  mov ax,cx
  mov bx,20
  mul bx
  mov bx,ax
  mov ax,word ptr sintab[bx]
  mov bx,rx
  mul bx
  shrd ax,dx,14
  add ax,x
  mov px2,ax                                 ; x2=x+sintab[z*20]*rx DIV 16384
  mov ax,cx
  mov bx,20
  mul bx
  mov bx,ax
  mov ax,word ptr sintab[bx+180]
  mov bx,ry
  mul bx
  shrd ax,dx,14
  mov bx,y
  sub bx,ax
  add ax,y
  mov py2,ax
  mov my2,bx                             ; y2=y+sintab[z*20+180]*ry DIV 16384
  mov ax,cx
  inc ax
  mov bx,20
  mul bx
  mov bx,ax
  mov ax,word ptr sintab[bx]
  mov bx,rx
  mul bx
  shrd ax,dx,14
  add ax,x
  mov px1,ax                            ;  x1=x+sintab[(z+1)*20]*rx DIV 16384
  mov ax,cx
  inc ax
  mov bx,20
  mul bx
  mov bx,ax
  mov ax,word ptr sintab[bx+180]
  mov bx,ry
  mul bx
  shrd ax,dx,14
  mov bx,y
  sub bx,ax
  add ax,y
  mov py1,ax
  mov my1,bx                        ;  y1=x+sintab[(z+1)*20+180]*ry DIV 16384
  push x
  push px1
  push py1
  push px2
  push py2
  push c
  call dline                                   ; Oberen linken Bogen zeichnen
  push x
  push px1
  push my1
  push px2
  push my2
  push c
  call dline                                 ; Unteren rechten Bogen zeichnen
  pop cx
  inc cx
  cmp cx,9
  jne fillcircle1
  leave
  ret asize
fillcircle endp

code ends


end
