CLASS zcl_calc_atb DEFINITION
PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.


    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.


    DATA: operador TYPE c LENGTH 1,
        num1     TYPE p LENGTH 8 DECIMALS 2,
        num2     TYPE p LENGTH 8 DECIMALS 2,
        result   TYPE p LENGTH 8 DECIMALS 2.


ENDCLASS.



CLASS zcl_calc_ATB IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


    operador = '/'.
    num1 = 34.
    num2 = 5.

    CASE operador.
      WHEN '+'.
        result = num1 + num2.
      WHEN '-'.
        result = num1 - num2.
      WHEN '*'.
        result = num1 * num2.
      WHEN '/'.
        IF num2 <> 0.
          result = num1 / num2.
        ELSE.
          out->write( 'Fallo no se puede divir por cero' ).
          RETURN.
        ENDIF.
      WHEN OTHERS.
        out->write( 'Operador no válido' ).
        RETURN.
    ENDCASE.

    out->write( |Resultado: { result }| ).

  ENDMETHOD.

ENDCLASS.
