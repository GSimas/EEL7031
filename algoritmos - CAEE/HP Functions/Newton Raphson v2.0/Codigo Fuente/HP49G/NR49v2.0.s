
NEWTON RAPHSON v2.0

NAME NR9

::
 
  ID p1
  NOT?SEMI
  ID p2
  NOT?SEMI
  ID p3

;

NULLNAME p1

::
 
  TRUE
  %1
  ' ID X
  MINUSONE
  4NULLLAM{}
  BIND
      ID p11
      4GETLAM
      ITE
      ::
        TrueTrue
        %20
        % .001
        3GETLAM
        2GETLAM
        1GETLAM
        TRUE
      ;
      FALSE
  ABND
  
;

NULLNAME p11

::
 
  BEGIN
       ::
         ID p1I
         ITE
         ID p1T
         ID p1F
       ;
  UNTIL
 
;

NULLNAME p1T

::
 
  3PUTLAM
  2PUTLAM
  1PUTLAM
  1GETLAM TYPEBINT?
  ITE
  ::
    FALSE 4PUTLAM
  ;
  ::
    1GETLAM PTR 2F110
    2GETLAM ONE{}N
    EQUAL
    ITE
    ::
      1GETLAM
      2GETLAM
      xˆ DO>STR
      TWO FOUR SUB$
      $ "der"
      EQUAL
      1GETLAM DO>STR
      $ "=" ONE
      POS$
      #0<>
      OR
      IT
      ::
        FALSE 4PUTLAM
        MINUSONE 1PUTLAM
      ;      
    ;
    ::
      FALSE 4PUTLAM
      MINUSONE 1PUTLAM
    ;
  ;
  ID p1T1
  
;

NULLNAME p1T1

::
 
  4GETLAM
  ITE
  TRUE
  ::
    FALSETRUE 4PUTLAM
    ID MsgBox
  ;
 
;

NULLNAME p1F

::
 
  TRUEFALSE 4PUTLAM
 
;

NULLNAME p1I

::
 
  $ "Funcion:"               ONE     NINE
  $ "F:"                     TWELVE  NINETEEN
  $ "VI:"                    TWELVE  THIRTY
  $ "AI:"                    SEVENTY THIRTY
  $ "NR49 v2.0 (c) 2004 JEM" ONE     FORTY
  
  'DROPFALSE
  TWENTYTWO
  SEVENTEEN
  IDREAL
  NINE
  TWENTYTHREE
  { NINE }
  FOUR
  $ "Funcion Continua"
  $ "Funcion En "
  MINUSONE
  DUP
  1GETLAM
  
  'DROPFALSE
  TWENTYFOUR
  TWENTYEIGHT
  THIRTYSEVEN
  NINE
  ONE
  { SIX }
  FOUR
  $ "Variable Independiente"
  MINUSONE
  DUP
  ' ID X
  2GETLAM
  
  'DROPFALSE
  LISTCMP
  TWENTYEIGHT
  THIRTYSEVEN
  NINE
  ONE
  { ZERO }
  FOUR
  $ "Aproximacion Inicial"
  MINUSONE
  DUP
  %0
  3GETLAM
  
  FIVE
  THREE
  'DROPFALSE
  $ "NEWTON RAPHSON"
  
  DoInputForm
 
;

NULLNAME p2

::
 
  ' NULLLAM SEVEN NDUPN
  DOBIND
        ID p22
        7GETLAM
        ITE
        ::
          DEPTH
          %1
          { $ "n" %0 }
          2GETLAM ID>$ $ "(n)" &$ 3GETLAM
          TWO{}N TWO{}N
          3GETLAM
          1GETLAM 2GETLAM
          RAD?
          ITE
          xˆ
          ::
            RAD?
            EIGHTEEN
            TestSysFlag
            ORNOT
            ITE
            ::
              SETRAD xˆ
              SETDEG
            ;
            ::
              SETRAD xˆ
              SETGRAD
            ;
          ;
          SEVEN
          ONE_DO
                SEVEN INDEX@#- GETLAM
              LOOP
          DUP ' ID EC
          ?STO_HERE
          TRUE
        ;
        FALSE
  ABND
 
;

NULLNAME p22

::
 
  BEGIN
       ::
         ID p2I
         ITE
         ID p2T
         ID p2F
       ;
  UNTIL
 
;

NULLNAME p2T

::

  6PUTLAM
  5PUTLAM
  4PUTLAM
  4GETLAM
  %0>
  ?SKIP
  ::
    FALSE 7PUTLAM
    % .001 4PUTLAM
  ;
  5GETLAM %10 %<
  5GETLAM % 30 %>
  OR
  IT
  ::
    FALSE 7PUTLAM
    %20 5PUTLAM
  ;
  ID p2T1
  
;

NULLNAME p2T1

::
 
  7GETLAM
  ITE
  ::
    TRUE
    5GETLAM %IP 5PUTLAM
  ;
  ::
    FALSETRUE 7PUTLAM
    ID MsgBox
  ;
 
;

NULLNAME p2F

::
 
  TRUEFALSE 7PUTLAM
 
;

NULLNAME p2I

::
 
  $ "Parametros:"               ONE       NINE
  $ "TOL:"                      TWELVE    NINETEEN
  $ "ITE:"                      SEVENTY   NINETEEN
  $ "Tabular Las Iteraciones ?" TWENTYTWO THIRTY
  $ "(c) Por Javier Miranda"    ONE       FORTY
  
  'DROPFALSE
  THIRTY
  SEVENTEEN
  THIRTYONE
  NINE
  ONE
  { ZERO }
  FOUR
  $ "Tolerancia"
  MINUSONE
  DUP
  % .001
  4GETLAM
  
  'DROPFALSE
  FIVESIX
  SEVENTEEN
  THIRTYONE
  NINE
  ONE
  { ZERO }
  FOUR
  $ "Iteracion Maxima"
  MINUSONE
  DUP
  %20
  5GETLAM
    
  'DROPFALSE
  TWELVE
  TWENTYEIGHT
  SIX
  NINE
  THIRTYTWO
  MINUSONE
  DUP
  $ "Usar CHECK o [+/-]"
  MINUSONE
  DUP
  TRUE
  6GETLAM
  
  FIVE
  THREE
  'DROPFALSE
  $ "NEWTON RAPHSON"
  
  DoInputForm

;

NULLNAME p3

::
 
  ' NULLLAM ELEVEN NDUPN
  DOBIND
        ERRSET
              ID p33
        ERRTRAP
              ::
                DEPTH
                11GETLAM
                2DUP
                #MAX
                UNROT
                #MIN
                #- NDROP
                ERRBEEP ClrDAsOK
              ;
  ABND

;

NULLNAME p33

::
   
  ClrDA1IsStat
  RECLAIMDISP
  TURNMENUOFF
  5GETLAM COERCE
  ZERO_DO
         3GETLAM
         1GETLAM 2GETLAM 3GETLAM TWO{}N x| CRUNCH
         7GETLAM 2GETLAM 3GETLAM TWO{}N x| CRUNCH
         DUP%0=
         ITE
         ::
           $ "/0" 8PUTLAM 3DROP
         ;
         ::
           %/ %- 8PUTLAM
         ;
         6GETLAM
         IT
         ::
           9GETLAM
           10GETLAM 8GETLAM TWO{}N
           xADD
           9PUTLAM
         ;
         8GETLAM TYPECSTR?
         ITE
         ExitAtLOOP
         ::
           8GETLAM 3GETLAM %- %ABS
           4GETLAM
           %<
           IT
           ExitAtLOOP
           8GETLAM 3PUTLAM
           10GETLAM %1+ 10PUTLAM
         ;
       LOOP     
  10GETLAM 5GETLAM
  %>
  ITE
  :: 
    THREE TestUserFlag
    IT
    ID p34
    $ "Raiz No Hallada"
  ;
  ID p34
  % 2000 % .05 DOBEEP
 
;

NULLNAME p34

::

  6GETLAM
  ITE
  ::
    $ "\n NEWTON-RAPHSON v2.0\n"
    9GETLAM ID CrTab
    &$
  ;
  ::
    8GETLAM 2GETLAM ID>TAG
  ;

;

NULLNAME CrTab

::
 
  DUPDUP
  LENCOMP
  SWAPONE
  NTHCOMPDROP
  LENCOMP
  ZERO
  SPACE$
  NULL{}
  DUP
  ' NULLLAM SEVEN NDUPN
  DOBIND
        NEWLINE$
        6GETLAM
        #1+_ONE_DO
                  7GETLAM INDEX@
                  NTHCOMPDROP
                  2PUTLAM
                  NULL{}
                  5GETLAM
                  #1+_ONE_DO
                            2GETLAM INDEX@
                            NTHCOMPDROP
                            DO>STR ONE TWENTYSIX SUB$
                            DUPLEN$ DUP
                            4GETLAM
                            #>ITE
                            4PUTLAM
                            DROP
                            >TCOMP
                          LOOP
                  2PUTLAM
                  4GETLAM #1+ 4PUTLAM
                  1GETLAM
                  NULL{}
                  5GETLAM
                  #1+_ONE_DO
                            $ "|"
                            2GETLAM INDEX@
                            NTHCOMPDROP
                            DUPLEN$
                            4GETLAM SWAP#-
                            Blank$ SWAP&$
                            &$ APPEND_SPACE
                            >TCOMP
                          LOOP
                  >TCOMP
                  1PUTLAM
                  3GETLAM
                  $ "+"
                  $ "-"
                  4GETLAM #1+
                  NDUPN #1+
                  #1+_ONE_DO
                            &$
                          LOOP
                  3PUTLAM
                  ZERO 4PUTLAM
                LOOP
        3GETLAM
        $ "+\n " &$
        3PUTLAM
        1GETLAM
        INNERCOMP
        ONE_DO
              xADD
            LOOP
        1PUTLAM
        NULL$
        5GETLAM
        #1+_ONE_DO
                  3GETLAM &$
                  1GETLAM INDEX@
                  NTHCOMPDROP $ "|\n"
                  &$ &$
                LOOP
        3GETLAM &$ 
        &$
  ABND
  
;

NULLNAME MsgBox

::
 
  ERRBEEP
  $ "    Dato(s)\n  No Valido(s)"
  xMSGBOX

;

NULLNAME $CONFIG

::
 
  # 54D
  XEQSETLIB
 
;

NULLNAME $HIDDEN

{ p1 p11 p1T p1T1 p1F p1I p2 p22 p2T p2T1 p2F p2I p3 p33 p34 CrTab MsgBox }

NULLNAME $VISIBLE

{ NR9 }

NULLNAME $ROMID

1357

NULLNAME $TITLE

$" NR9 : NR49 v2.0 (c) 2004 JEM"
