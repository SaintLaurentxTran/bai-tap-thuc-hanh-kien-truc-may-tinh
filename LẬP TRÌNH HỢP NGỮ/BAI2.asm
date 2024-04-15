.MODEL SMALL
.STACK 100H
.DATA
    THONGBAO1 DB 'MOI NHAP 1 KY TU:$'
    THONGBAO2 DB 13,10,'KY TU LIEN TRUOC LA:$'
    THONGBAO3 DB 13,10,'KY TU LIEN SAU LA:$'
    KYTU    DB ?
.CODE
    MAIN PROC
        MOV AX,@DATA
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
        DEC DL
        MOV AH,02H
        INT 21H
        MOV AH,09H
        LEA DX,THONGBAO3
        INT 21H
        MOV DL,KYTU
        INC DL
        MOV AH,02H
        INT 21H
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END MAIN