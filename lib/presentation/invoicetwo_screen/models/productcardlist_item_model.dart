import '../../../core/app_export.dart';/// This class is used in the [productcardlist_item_widget] screen.
class ProductcardlistItemModel {ProductcardlistItemModel({this.productName, this.productCompany, this.productRating, this.productReviewCount, this.productPrice1, this.productPrice2, this.productAvailabilityText, this.productQuantity, this.productAddToCartButton, this.id, }) { productName = productName  ?? "panadol advace";productCompany = productCompany  ?? "from : gsk company";productRating = productRating  ?? "4.5";productReviewCount = productReviewCount  ?? "(1045 Reviews)";productPrice1 = productPrice1  ?? "235,00";productPrice2 = productPrice2  ?? "335,00";productAvailabilityText = productAvailabilityText  ?? "-";productQuantity = productQuantity  ?? "3";productAddToCartButton = productAddToCartButton  ?? "+";id = id  ?? ""; }

String? productName;

String? productCompany;

String? productRating;

String? productReviewCount;

String? productPrice1;

String? productPrice2;

String? productAvailabilityText;

String? productQuantity;

String? productAddToCartButton;

String? id;

 }
