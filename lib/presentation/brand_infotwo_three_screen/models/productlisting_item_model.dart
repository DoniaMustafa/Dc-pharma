import '../../../core/app_export.dart';/// This class is used in the [productlisting_item_widget] screen.
class ProductlistingItemModel {ProductlistingItemModel({this.discountText, this.productImage, this.productTitle, this.originalPrice, this.discountedPrice, this.id, }) { discountText = discountText  ?? "-15%";productImage = productImage  ?? ImageConstant.imgDownload7RemovebgPreview97x138;productTitle = productTitle  ?? "Electronic marketing";originalPrice = originalPrice  ?? "335,00";discountedPrice = discountedPrice  ?? "235,00";id = id  ?? ""; }

String? discountText;

String? productImage;

String? productTitle;

String? originalPrice;

String? discountedPrice;

String? id;

 }
