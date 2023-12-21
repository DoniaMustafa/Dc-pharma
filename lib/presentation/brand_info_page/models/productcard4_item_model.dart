import '../../../core/app_export.dart';/// This class is used in the [productcard4_item_widget] screen.
class Productcard4ItemModel {Productcard4ItemModel({this.title, this.subtitle, this.ratingText, this.reviewCount, this.price1, this.price2, this.id, }) { title = title  ?? "panadol advace";subtitle = subtitle  ?? "from : gsk company";ratingText = ratingText  ?? "4.5";reviewCount = reviewCount  ?? "(1045 Reviews)";price1 = price1  ?? "235,00";price2 = price2  ?? "335,00";id = id  ?? ""; }

String? title;

String? subtitle;

String? ratingText;

String? reviewCount;

String? price1;

String? price2;

String? id;

 }
