import '../../../core/app_export.dart';/// This class is used in the [productcardgrid2_item_widget] screen.
class Productcardgrid2ItemModel {Productcardgrid2ItemModel({this.widget, this.productName, this.productDescription, this.ratingValue, this.reviewCount, this.originalPrice, this.discountedPrice, this.addToCartButton, this.id, }) { widget = widget  ?? "-15%";productName = productName  ?? "panadol advace";productDescription = productDescription  ?? "from : gsk company";ratingValue = ratingValue  ?? "4.5";reviewCount = reviewCount  ?? "(1045 Reviews)";originalPrice = originalPrice  ?? "335,00";discountedPrice = discountedPrice  ?? "235,00";addToCartButton = addToCartButton  ?? ImageConstant.imgCartWhiteA700;id = id  ?? ""; }

String? widget;

String? productName;

String? productDescription;

String? ratingValue;

String? reviewCount;

String? originalPrice;

String? discountedPrice;

String? addToCartButton;

String? id;

 }
