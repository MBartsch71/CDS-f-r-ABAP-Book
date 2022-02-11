@AbapCatalog.sqlViewName: 'ZISALESORDERITEM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Sales Order Item'
define view ZI_SalesOrderItem
  as select from zsalesorderitem
  association [0..1] to ZI_Product as _Product on $projection.Product = _Product.Product
{
  key salesorder          as Salesorder,
  key salesorderitem      as Salesorderitem,
      product             as Product,
      @Semantics.quantity.unitOfMeasure: 'OrderQuantityUnit'
      orderquantity       as Orderquantity,
      @Semantics.unitOfMeasure: true
      orderquantityunit   as Orderquantityunit,
      _Product
}
