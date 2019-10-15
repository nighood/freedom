PUBLIC  DISPBX
CODE    SEGMENT
        ASSUME  CS:CODE
DISPBX  PROC    FAR
        PUSH    DX;保护最大数
        MOV     CH,4
        MOV     CL,4
ROTATE: ROL     BX,CL
        MOV     AL,BL
        AND     AL,0FH
        ADD     AL,30H
        CMP     AL,3AH
        JL      PRINTIT
        ADD     AL,7
PRINTIT:MOV     DL,AL
        MOV     AH,2
        INT     21H
        DEC     CH
        JNZ    ROTATE
        MOV     DL,20H
        MOV     AH,2
        INT     21H
        POP	  DX
        RET
DISPBX  ENDP
CODE    ENDS
       	END
