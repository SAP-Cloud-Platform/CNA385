CLASS zcl_github_feedback DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CONSTANTS:
               mc_owner     TYPE string VALUE 'SAP-Cloud-Platform',
               mc_repo      TYPE string VALUE 'CNA385',
               mc_commit    TYPE string VALUE 'd59161396d21e4bb9953d512382c9f27f5248e55',
               mc_username  TYPE string VALUE 'CNA385-XXX'.  "Please change this line to your user


ENDCLASS.



CLASS zcl_github_feedback IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    "cl_http_destination_provider=>create_by_cloud_destination(
    "  EXPORTING
    "    i_name                  = 'github'
    "    i_service_instance_name = 'cna385-destination'
    "    i_authn_mode            = if_a4c_cp_service=>service_specific
    "  RECEIVING
    "    r_http_destination      = DATA(lo_destination)
    ").

    "DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

    "DATA(lo_request) = lo_client->get_http_request( ).
    "lo_request->set_uri_path( |/repos/{ mc_owner }/{ mc_repo }/commits/{ mc_commit }/comments| ).
    "lo_request->set_text( |\{"body": "{ mc_username } was here"\}| ).

    "DATA(lo_response) = lo_client->execute( i_method = if_web_http_client=>post ).

    "out->write( lo_response->get_text( ) ).

  ENDMETHOD.

ENDCLASS.
