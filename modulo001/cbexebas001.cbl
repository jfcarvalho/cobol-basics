      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CBEXEBAS001.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NUM-1                        PIC 99 VALUE 0.
       77 WS-NUM-2                        PIC 99 VALUE 0.
       01 WS-PAGTO                        PIC X  VALUE 'N'.
           88 WS-CONFIRM                  VALUE 'S' FALSE 'N'.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY 'ANTES DE SETAR WS-NUM-1: '  WS-NUM-1.
            SET WS-NUM-1                   TO 5.
            DISPLAY 'DEPOIS DE SETAR WS-NUM-1: ' WS-NUM-1.

            DISPLAY 'ANTES DE SETAR WS-NUM-2: '  WS-NUM-2.
            SET WS-NUM-2                   TO WS-NUM-1.
            DISPLAY 'DEPOIS DE SETAR WS-NUM-2: '  WS-NUM-2.

            SET WS-NUM-1                   TO 7
            DISPLAY 'VALOR FINAL WS-NUM-1: ' WS-NUM-1.
            DISPLAY 'VALOR FINAL WS-NUM-2: ' WS-NUM-2.

            DISPLAY 'SITUAÇÃO DO PAGTO ATUAL: ' WS-PAGTO.
            SET WS-CONFIRM                     TO TRUE.
            DISPLAY 'NOVA SITUAÇÃO DO PAGTO.: ' WS-PAGTO.

            SET WS-CONFIRM                     TO FALSE.
            DISPLAY 'SITUAÇÃO DO PAGTO CORR.: ' WS-PAGTO.

       END PROGRAM CBEXEBAS001.
