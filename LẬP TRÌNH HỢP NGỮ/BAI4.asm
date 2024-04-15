.MODEL SMALL 
.STACK 100H
.DATA
    THONGBAO1 DB 'MOI NHAP 1 KY TU THUONG:$'
    THONGBAO2 DB 13,10, 'KY TU HOA LA:$'
    KYTU    DB ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS,AX
        MOV AH,09H
        LEA DX,THONGBAO1
        INT 21H
        MOV AH,01H
        INT 21H
        MOV KYTU,AL
        MOV AH,09H
        LEA DX,THONGBAO2
        INT 21H
        MOV DL,KYTU        
        SUB DL,32
        MOV AH,02H
        INT 21H
        MOV AH,4CH
        INT 21H
    MAIN ENDP
        END MAIN