import '../../../core/app_export.dart';/// This class is used in the [productlistlist_item_widget] screen.
class ProductlistlistItemModel {ProductlistlistItemModel({this.productName, this.companyName, this.rating, this.reviewCount, this.price1, this.price2, this.id, }) { productName = productName  ?? "panadol advace";companyName = companyName  ?? "from : gsk company";rating = rating  ?? "4.5";reviewCount = reviewCount  ?? "(1045 Reviews)";price1 = price1  ?? "235,00";price2 = price2  ?? "335,00";id = id  ?? ""; }

String? productName;

String? companyName;

String? rating;

String? reviewCount;

String? price1;

String? price2;

String? id;

 }
