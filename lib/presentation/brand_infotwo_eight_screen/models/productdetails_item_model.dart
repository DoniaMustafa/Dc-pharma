import '../../../core/app_export.dart';/// This class is used in the [productdetails_item_widget] screen.
class ProductdetailsItemModel {ProductdetailsItemModel({this.widget, this.productName, this.productDescription, this.productQuantity, this.productPrice, this.productStatus, this.id, }) { widget = widget  ?? "-15%";productName = productName  ?? "panadol advace";productDescription = productDescription  ?? "medicines";productQuantity = productQuantity  ?? "quantity : 76";productPrice = productPrice  ?? "235,00";productStatus = productStatus  ?? "unaccepte";id = id  ?? ""; }

String? widget;

String? productName;

String? productDescription;

String? productQuantity;

String? productPrice;

String? productStatus;

String? id;

 }
