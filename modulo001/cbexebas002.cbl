      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CBEXEBAS002.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA                  PIC X(10)       VALUE SPACES.
       01 WS-DATA-R         REDEFINES  WS-DATA.
          03 WS-DATA-DD            PIC 9(02).
          03 FILLER                PIC X.
          03 WS-DATA-MM            PIC 9(02).
          03 FILLER                PIC X.
          03 WS-DATA-AA            PIC 9(04).
       77 WS-NOME-MES-AUX          PIC X(15) VALUE SPACES.
       77 WS-TECLA-AUX             PIC X.
       77 FILLER                   PIC X(10)  VALUES SPACES.

       01 WS-MESES-ANO             PIC 99 VALUE ZEROS.
           88 WS-MES-ATUAL                VALUE 1 THRU 12.

       01 WS-DIAS-MES              PIC 99 VALUE ZEROS.
          88 WS-FEV-NB                    VALUE 1 THRU 28.
          88 WS-FEV-B                     VALUE 1 THRU 29.
          88 WS-MES-30                    VALUE 1 THRU 30.
          88 WS-MES-31                    VALUE 1 THRU 31.

       PROCEDURE DIVISION.
       P100-INITIAL.
           DISPLAY "Begin Processing".

           MOVE 3          TO WS-MESES-ANO.

           IF WS-MES-ATUAL THEN
               DISPLAY "MES VERDADEIRO: " WS-MESES-ANO
           ELSE
               DISPLAY "ESSE MES NAO EXISTE: " WS-MESES-ANO
           END-IF.

           MOVE 31         TO WS-DIAS-MES.

           EVALUATE WS-DIAS-MES
               WHEN 1 THRU 28
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 29
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 30
                   DISPLAY WS-DIAS-MES
               WHEN 1 THRU 31
                   DISPLAY WS-DIAS-MES
               WHEN OTHER
                   DISPLAY "O DIA DE MES NAO EXISTE " WS-DIAS-MES
           END-EVALUATE.

           STOP RUN.

           MOVE SPACES         TO WS-DATA
                                  WS-NOME-MES-AUX
                                  WS-TECLA-AUX.
           DISPLAY "INFORME UMA DATA: ".
           ACCEPT WS-DATA.


       MAIN-PROCEDURE.
            DISPLAY WS-DATA.
            DISPLAY WS-DATA-R.
            STOP RUN.
       END PROGRAM CBEXEBAS002.
