.MODEL SMALL 
.STACK 100H
.DATA
    THONGBAO1 DB 'MOI NHAP KY TU:$'
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS,AX
        MOV AH,09H
        LEA DX,THONGBAO1
        INT 21H    
        MOV AH,01H  
        LAP:
            INT 21H
            CMP AL,13D
            JE THOAT
            LOOP LAP
        THOAT:
            MOV AH,4CH
            INT 21H
    MAIN ENDP
        END MAIN