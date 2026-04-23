CLASS zcl_primera_clase_atb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
* aqui cuando pongas interface saldrá una bombilla, aceptarla.
    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_primera_clase_atb IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lv_num  TYPE i.
    DATA lv_cont TYPE i VALUE 0.

    lv_num = 362.

    out->write( 'El numero inicial es' ).
    out->write( lv_num ).

* Bucle restando de 2 en 2
    WHILE lv_num >= 2.

      lv_cont = lv_cont + 1.
      lv_num = lv_num - 2.

      out->write(
        |En iteración { lv_cont } el numero vale { lv_num }|
      ).

    ENDWHILE.

* Comprobar si es par o impar
    IF lv_num = 0.
      out->write( 'Es par' ).
    ELSE.
      out->write( 'Es impar' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.








