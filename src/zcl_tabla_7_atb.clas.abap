CLASS zcl_tabla_7_atb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tabla_7_atb IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lv_numero TYPE i VALUE 7.
    DATA lv_mult   TYPE i.
    DATA lv_result TYPE i.
    DATA lv_suma   TYPE i VALUE 0.

    out->write( 'Tabla del 7' ).


    DO 10 TIMES.

      lv_mult = sy-index.
      lv_result = lv_numero * lv_mult.
      lv_suma = lv_suma + lv_result.

      out->write( |{ lv_numero } x { lv_mult } = { lv_result }| ).

    ENDDO.

    out->write( '--------------------' ).
    out->write( |Suma total = { lv_suma }| ).

  ENDMETHOD.

ENDCLASS.





