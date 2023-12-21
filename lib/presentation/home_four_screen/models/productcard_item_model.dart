import '../../../core/app_export.dart';/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {ProductcardItemModel({this.widget, this.productName, this.productDescription, this.ratingValue, this.reviewCount, this.price1, this.price2, this.id, }) { widget = widget  ?? "-15%";productName = productName  ?? "panadol advace exs....";productDescription = productDescription  ?? "from : gsk company";ratingValue = ratingValue  ?? "4.5";reviewCount = reviewCount  ?? "(1045 Reviews)";price1 = price1  ?? "235,00";price2 = price2  ?? "335,00";id = id  ?? ""; }

String? widget;

String? productName;

String? productDescription;

String? ratingValue;

String? reviewCount;

String? price1;

String? price2;

String? id;

 }
