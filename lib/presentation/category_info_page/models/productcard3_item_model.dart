import '../../../core/app_export.dart';/// This class is used in the [productcard3_item_widget] screen.
class Productcard3ItemModel {Productcard3ItemModel({this.discountText, this.productName, this.productDescription, this.ratingText, this.reviewText, this.priceText1, this.priceText2, this.id, }) { discountText = discountText  ?? "-15%";productName = productName  ?? "panadol advace exs....";productDescription = productDescription  ?? "from : gsk company";ratingText = ratingText  ?? "4.5";reviewText = reviewText  ?? "(1045 Reviews)";priceText1 = priceText1  ?? "235,00";priceText2 = priceText2  ?? "335,00";id = id  ?? ""; }

String? discountText;

String? productName;

String? productDescription;

String? ratingText;

String? reviewText;

String? priceText1;

String? priceText2;

String? id;

 }
