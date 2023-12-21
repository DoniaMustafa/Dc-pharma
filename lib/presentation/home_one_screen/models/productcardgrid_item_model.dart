import '../../../core/app_export.dart';/// This class is used in the [productcardgrid_item_widget] screen.
class ProductcardgridItemModel {ProductcardgridItemModel({this.discountText, this.productName, this.companyName, this.ratingText, this.reviewText, this.originalPrice, this.discountedPrice, this.id, }) { discountText = discountText  ?? "-15%";productName = productName  ?? "panadol advace";companyName = companyName  ?? "from : gsk company";ratingText = ratingText  ?? "4.5";reviewText = reviewText  ?? "(1045 Reviews)";originalPrice = originalPrice  ?? "335,00";discountedPrice = discountedPrice  ?? "235,00";id = id  ?? ""; }

String? discountText;

String? productName;

String? companyName;

String? ratingText;

String? reviewText;

String? originalPrice;

String? discountedPrice;

String? id;

 }
