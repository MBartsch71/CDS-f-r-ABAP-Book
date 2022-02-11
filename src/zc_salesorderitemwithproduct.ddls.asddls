@AbapCatalog.sqlViewName: 'ZCSOITEMPRODUCT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Sales Order Item with Product'
define view ZC_SalesOrderItemWithProduct
  as select from           ZI_SalesOrderItem as ITEM
    left outer to one join ZI_Product        as PROD 
    on PROD.Product = ITEM.Product
{
  ITEM.Salesorder,
  ITEM.Salesorderitem,
  ITEM.Product,
  ITEM.Orderquantity,
  ITEM.Orderquantityunit,
  PROD.ProductType,
  PROD.CreationDateTime
}
