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

  out->write( 'Hello World!' ) .

  ENDMETHOD.

ENDCLASS .
