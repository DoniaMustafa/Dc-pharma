import '../../../core/app_export.dart';/// This class is used in the [productcard8_item_widget] screen.
class Productcard8ItemModel {Productcard8ItemModel({this.discountText, this.productName, this.productCompany, this.ratingText, this.reviewText, this.originalPrice, this.discountedPrice, this.addToCartButton, this.id, }) { discountText = discountText  ?? "-15%";productName = productName  ?? "panadol advace";productCompany = productCompany  ?? "from : gsk company";ratingText = ratingText  ?? "4.5";reviewText = reviewText  ?? "(1045 Reviews)";originalPrice = originalPrice  ?? "335,00";discountedPrice = discountedPrice  ?? "235,00";addToCartButton = addToCartButton  ?? ImageConstant.imgCart;id = id  ?? ""; }

String? discountText;

String? productName;

String? productCompany;

String? ratingText;

String? reviewText;

String? originalPrice;

String? discountedPrice;

String? addToCartButton;

String? id;

 }
