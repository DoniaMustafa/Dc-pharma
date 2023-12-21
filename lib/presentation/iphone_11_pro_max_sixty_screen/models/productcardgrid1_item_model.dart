import '../../../core/app_export.dart';/// This class is used in the [productcardgrid1_item_widget] screen.
class Productcardgrid1ItemModel {Productcardgrid1ItemModel({this.discountText, this.productName, this.productCompany, this.ratingText, this.reviewText, this.originalPrice, this.discountedPrice, this.addToCartButton, this.id, }) { discountText = discountText  ?? "-15%";productName = productName  ?? "panadol advace";productCompany = productCompany  ?? "from : gsk company";ratingText = ratingText  ?? "4.5";reviewText = reviewText  ?? "(1045 Reviews)";originalPrice = originalPrice  ?? "335,00";discountedPrice = discountedPrice  ?? "235,00";addToCartButton = addToCartButton  ?? ImageConstant.imgCartWhiteA700;id = id  ?? ""; }

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
