import '../../../core/app_export.dart';/// This class is used in the [productcard6_item_widget] screen.
class Productcard6ItemModel {Productcard6ItemModel({this.discountPercentage, this.productName, this.productCompany, this.rating, this.reviewCount, this.price1, this.price2, this.id, }) { discountPercentage = discountPercentage  ?? "-15%";productName = productName  ?? "panadol advace exs....";productCompany = productCompany  ?? "from : gsk company";rating = rating  ?? "4.5";reviewCount = reviewCount  ?? "(1045 Reviews)";price1 = price1  ?? "235,00";price2 = price2  ?? "335,00";id = id  ?? ""; }

String? discountPercentage;

String? productName;

String? productCompany;

String? rating;

String? reviewCount;

String? price1;

String? price2;

String? id;

 }
