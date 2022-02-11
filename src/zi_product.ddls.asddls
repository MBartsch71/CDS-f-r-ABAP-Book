@AbapCatalog.sqlViewName: 'ZIPRODUCT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Product'
define view ZI_Product
  as select from zproduct
{
  key product            as Product,
      product_type       as ProductType,
      creation_date_time as CreationDateTime

}
