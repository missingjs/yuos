%include "pm.inc"

org  07c00h
     jmp   LABEL_BEGIN

[SECTION .gdt]
LABEL_GDT:         Descriptor 0,       0,                0
LABEL_DESC_CODE32: Descriptor 0,       SegCode32Len - 1, DA_C + DA_32
LABEL_DESC_VIDEO:  Descriptor 0B8000h, 0ffffh,           DA_DRW

GdtLen  equ  $ - LABEL_GDT
GdtPtr  dw   GdtLen - 1
        dd   0


SelectorCode32  equ  LABEL_DESC_CODE32 - LABEL_GDT
SelectorVideo   equ  LABEL_DESC_VIDEO  - LABEL_GDT



