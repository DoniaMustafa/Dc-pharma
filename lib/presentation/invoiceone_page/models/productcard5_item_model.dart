import '../../../core/app_export.dart';/// This class is used in the [productcard5_item_widget] screen.
class Productcard5ItemModel {Productcard5ItemModel({this.productName, this.productCompany, this.productRating, this.productReviews, this.productPrice1, this.productPrice2, this.productCount, this.plusIcon, this.id, }) { productName = productName  ?? "panadol advace";productCompany = productCompany  ?? "from : gsk company";productRating = productRating  ?? "4.5";productReviews = productReviews  ?? "(1045 Reviews)";productPrice1 = productPrice1  ?? "235,00";productPrice2 = productPrice2  ?? "335,00";productCount = productCount  ?? "3";plusIcon = plusIcon  ?? "+";id = id  ?? ""; }

String? productName;

String? productCompany;

String? productRating;

String? productReviews;

String? productPrice1;

String? productPrice2;

String? productCount;

String? plusIcon;

String? id;

 }
