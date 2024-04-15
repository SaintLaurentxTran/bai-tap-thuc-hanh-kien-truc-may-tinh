.MODEL SMALL
.STACK 100H
.DATA
    THONGBAO1 DB 'MOI NHAP SO THU NHAT:$'
    THONGBAO2 DB 13,10,'MOI NHAP SO THU HAI:$'
    THONGBAO3 DB 13,10,'TONG HAI SO LA:$'
    THONGBAO4 DB 13,10,'KHONG THE THUC HIEN PHEP CONG!$'
    SOTHU1 DB ?
    TONG DB ?
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH, 09H
        LEA DX,THONGBAO1
        INT 21H
        
        MOV AH,01H
        INT 21H
        
        MOV SOTHU1,AL
        
        MOV AH,09H
        LEA DX,THONGBAO2
        INT 21H
        
        MOV AH,01H
        INT 21H
        
        ADD AL,SOTHU1
        SUB AL,48D
        
        MOV TONG,AL
        
        CMP AL,57D
        
        JA KHONGTHUCHIEN
        
        HIENTHIKETQUA:
            MOV AH,09H
            LEA DX,THONGBAO3
            INT 21H
            
            MOV DL,TONG
            MOV AH,02H
            INT 21H
            JMP THOAT
        KHONGTHUCHIEN:
            MOV AH,09H
            LEA DX,THONGBAO4
            INT 21H
        THOAT:
            MOV AH,4CH
            INT 21H
    MAIN ENDP
        END MAIN