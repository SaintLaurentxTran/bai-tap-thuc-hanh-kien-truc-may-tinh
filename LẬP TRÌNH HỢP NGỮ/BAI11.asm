.MODEL SMALL
.STACK 100H
.DATA
    THONGBAO1 DB 'MOI NHAP SO THU NHAT:$'
    THONGBAO2 DB 13,10,'MOI NHAP SO THU HAI:$'
    THONGBAO3 DB 13,10,'TONG LON HON 5!$'
    THONGBAO4 DB 13,10,'TONG BANG 5!$'
    THONGBAO5 DB 13,10,'TONG NHO HON 5!$'
    THONGBAO6 DB 13,10,'KHONG THE THUC HIEN PHEP CONG!$'
    SOTHU1 DB ?
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
        
        
        CMP AL,48D
        JB KHONGTHUCHIEN
        CMP AL,57D
        JA KHONGTHUCHIEN
        CMP AL,53D
        JA SOLONHON5
        JE SOBANG5
        JB SONHOHON5
        
        SOLONHON5:
            MOV AH,09H
            LEA DX,THONGBAO3
            INT 21H
            JMP THOAT
        SOBANG5:
            MOV AH,09H
            LEA DX,THONGBAO4
            INT 21H
            JMP THOAT
        SONHOHON5:
            MOV AH,09H
            LEA DX,THONGBAO5
            INT 21H
            JMP THOAT
        KHONGTHUCHIEN:
            MOV AH,09H
            LEA DX,THONGBAO6
            INT 21H
            JMP THOAT
        THOAT:
            MOV AH,4CH
            INT 21H
    MAIN ENDP
        END MAIN