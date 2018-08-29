CLASS zcna_cl_data_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
PROTECTED SECTION.
PRIVATE SECTION.
ENDCLASS.



CLASS zcna_cl_data_generator IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    data ls_city type zcna_t_city.
    data lt_city type STANDARD TABLE OF zcna_t_city.

    DELETE FROM zcna_t_city.

    ls_city-city_id     = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ).
    ls_city-name        = 'Las Vegas'.
    ls_city-country     = 'United States of America'.
    ls_city-population  = 632912.
    APPEND ls_city to lt_city.

    ls_city-city_id     = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ).
    ls_city-name        = 'Barcelona'.
    ls_city-country     = 'Spain'.
    ls_city-population  = 1609000.
    APPEND ls_city to lt_city.

    ls_city-city_id     = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ).
    ls_city-name        = 'Madrid'.
    ls_city-country     = 'Spain'.
    ls_city-population  = 3166000.
    APPEND ls_city to lt_city.

    ls_city-city_id     = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ).
    ls_city-name        = 'Bangalore'.
    ls_city-country     = 'India'.
    ls_city-population  = 12340000.
    APPEND ls_city to lt_city.

    ls_city-city_id     = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ).
    ls_city-name        = 'New York'.
    ls_city-country     = 'United States of America'.
    ls_city-population  = 8538000.
    APPEND ls_city to lt_city.

    ls_city-city_id     = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ).
    ls_city-name        = 'Washington'.
    ls_city-country     = 'United States of America'.
    ls_city-population  = 7406000.
    APPEND ls_city to lt_city.

    ls_city-city_id     = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ).
    ls_city-name        = 'Walldorf'.
    ls_city-country     = 'Germany'.
    ls_city-population  = 14646.
    APPEND ls_city to lt_city.

    ls_city-city_id     = cl_uuid_factory=>create_system_uuid( )->create_uuid_x16( ).
    ls_city-name        = 'New Delhi'.
    ls_city-country     = 'India'.
    ls_city-population  = 21750000.
    APPEND ls_city to lt_city.

    INSERT zcna_t_city from table lt_city.

    if sy-subrc = 0.
        out->write( 'Data generation was successful.').
        out->write( lt_city ).
    else.
        out->write( 'Ups, something went wrong. Please contact your speaker.').
    endif.

  ENDMETHOD.

ENDCLASS.
