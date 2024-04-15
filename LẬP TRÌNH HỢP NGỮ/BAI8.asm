.MODEL SMALL
.STACK 100H
.DATA
    THONGBAO1 DB 'MOI NHAP KY TU:$'
    THONGBAO2 DB 13,10,'LA KY TU SO!$'
    THONGBAO3 DB 13,10,'KHONG LA KY TU SO!$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H
        LEA DX,THONGBAO1
        INT 21H
        
        MOV AH,01H
        INT 21H
        
        CMP AL,48D
        JB KHONGLASO
        CMP AL,57D
        JA KHONGLASO
        
        LASO: 
            MOV AH,09H
            LEA DX,THONGBAO2
            INT 21H
            JMP THOAT
        KHONGLASO:
            MOV AH,09H
            LEA DX,THONGBAO3
            INT 21H
        THOAT:
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END MAIN