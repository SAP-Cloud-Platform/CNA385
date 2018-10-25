@AbapCatalog.sqlViewName: 'ZCNA_V_CITY'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS View on City Table for TechEd CNA'

@Search.searchable: true 
@UI: { headerInfo: { typeName: 'City', typeNamePlural: 'Cities' } }
                     
define view ZCNA_CDS_CITY as select from zcna_t_city {
    @UI.hidden: true
    key city_id, 
    @Search.defaultSearchElement: true
    @UI: { lineItem: [ { position: 10, label: 'Name'  } ] , identification: [ { position: 10, label: 'Name' } ] , selectionField: [ { position: 10 } ] } 
    name, 
    @Search.defaultSearchElement: true
    @UI: { lineItem: [ { position: 20, label: 'Country'  } ] , identification: [ { position: 30, label: 'Country'  } ] , selectionField: [ { position: 20 } ] }
    country, 
    @UI: { lineItem: [ { position: 30, label: 'Population'  } ] , identification: [ { position: 20 } ] } 
    population
    
}
