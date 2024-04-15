.MODEL SMALL
.STACK 100H
.DATA
    THONGBAO1 DB 'MOI NHAP KY TU:$'
    THONGBAO2 DB 13,10,'LA KY TU HOA!$'
    THONGBAO3 DB 13,10,'LA KY TU THUONG!$'
    THONGBAO4 DB 13,10, 'KHONG LA KY TU CHU!$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,09H
        LEA DX,THONGBAO1
        INT 21H
        
        MOV AH,01H
        INT 21H
        
        CMP AL,65D
        JB KHONGLAKYTUCHU
        CMP AL,122D
        JA KHONGLAKYTUCHU
        CMP AL,90D
        JBE LAKYTUHOA
        CMP AL,97D
        JAE LAKYTUTHUONG
        
        LAKYTUHOA: 
            MOV AH,09H
            LEA DX,THONGBAO2
            INT 21H
            JMP THOAT
        LAKYTUTHUONG:
            MOV AH,09H
            LEA DX,THONGBAO3
            INT 21H
        KHONGLAKYTUCHU:
            MOV AH,09H
            LEA DX,THONGBAO4
            INT 21H  
        THOAT:
        MOV AH,4CH
        INT 21H
    MAIN ENDP
    END MAIN