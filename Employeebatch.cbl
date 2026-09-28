       IDENTIFICATION DIVISION.
       PROGRAM-ID. EMPLOYEE-BATCH.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT EMPLOYEE-FILE
               ASSIGN TO EMPIN
               ORGANIZATION IS SEQUENTIAL
               FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.

       FD  EMPLOYEE-FILE.
       01  EMPLOYEE-RECORD.
           05 EMP-ID          PIC 9(6).
           05 EMP-NAME        PIC X(20).
           05 EMP-DEPARTMENT  PIC X(10).
           05 EMP-SALARY      PIC 9(7)V99.

       WORKING-STORAGE SECTION.

       01  WS-FILE-STATUS     PIC XX.
       01  WS-EOF             PIC X VALUE 'N'.
           88 END-OF-FILE     VALUE 'Y'.

       01  WS-RECORD-COUNT    PIC 9(5) VALUE ZERO.

       PROCEDURE DIVISION.

       MAIN-PROCESS.

           OPEN INPUT EMPLOYEE-FILE

           IF WS-FILE-STATUS NOT = '00'
               DISPLAY 'ERROR OPENING EMPLOYEE FILE: '
                       WS-FILE-STATUS
               STOP RUN
           END-IF

           PERFORM UNTIL END-OF-FILE

               READ EMPLOYEE-FILE
                   AT END
                       SET END-OF-FILE TO TRUE
                   NOT AT END
                       ADD 1 TO WS-RECORD-COUNT
                       PERFORM PROCESS-EMPLOYEE
               END-READ

           END-PERFORM

           CLOSE EMPLOYEE-FILE

           DISPLAY 'TOTAL RECORDS PROCESSED: '
                   WS-RECORD-COUNT

           STOP RUN.

       PROCESS-EMPLOYEE.

           DISPLAY 'EMPLOYEE ID   : ' EMP-ID
           DISPLAY 'EMPLOYEE NAME : ' EMP-NAME
           DISPLAY 'DEPARTMENT    : ' EMP-DEPARTMENT
           DISPLAY 'SALARY        : ' EMP-SALARY.
