import '../../../core/app_export.dart';/// This class is used in the [productcardlist2_item_widget] screen.
class Productcardlist2ItemModel {Productcardlist2ItemModel({this.productName, this.productDescription, this.ratingValue, this.reviewCount, this.price1, this.price2, this.clockText, this.quantity, this.addButton, this.id, }) { productName = productName  ?? "panadol advace";productDescription = productDescription  ?? "from : gsk company";ratingValue = ratingValue  ?? "4.5";reviewCount = reviewCount  ?? "(1045 Reviews)";price1 = price1  ?? "235,00";price2 = price2  ?? "335,00";clockText = clockText  ?? "-";quantity = quantity  ?? "3";addButton = addButton  ?? "+";id = id  ?? ""; }

String? productName;

String? productDescription;

String? ratingValue;

String? reviewCount;

String? price1;

String? price2;

String? clockText;

String? quantity;

String? addButton;

String? id;

 }
