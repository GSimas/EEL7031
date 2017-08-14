
NEWTON RAPHSON v2.0

NAME NR8

::
 
  THREE ClrSysFlag
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
    1GETLAM PTR 353AB
    2GETLAM ONE{}N
    EQUAL
    ITE
    ::
      1GETLAM
      2GETLAM
      rpnDER DO>STR
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
  $ "NR48 v2.0 (c) 2004 JEM" ONE     FORTY
  
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
 
  PTR 3306C
  BIND
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
        rpnDER
        ::
          PTR 53BC9
          ITE
          ::
            SETRAD rpnDER
            SETDEG
          ;
          ::
            SETRAD rpnDER
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
         1GETLAM 2GETLAM 3GETLAM TWO{}N PTR 1F38B CRUNCH
         7GETLAM 2GETLAM 3GETLAM TWO{}N PTR 1F38B CRUNCH
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
           ROMPTR E8 15
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
  PTR 3306C
  BIND
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
            ROMPTR E8 15
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

  $ "  Dato(s)\nNo Valido(s)"
  ERRBEEP
  TWELVE
  FIFTEEN
  ROMPTR B0 85
  ROMPTR B1 2
  ROMPTR B1 0
  DROP

;

NULLNAME $CONFIG

::

  # 54D
  TOSRRP

;

NULLNAME $ROMID

# 1357d

NULLNAME $TITLE

$ " NR8 : NR48 v2.0 (c) 2004 JEM"

NULLNAME $VISIBLE

{ NR8 }
