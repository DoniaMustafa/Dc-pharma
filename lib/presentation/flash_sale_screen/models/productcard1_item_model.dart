import '../../../core/app_export.dart';/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {Productcard1ItemModel({this.discountText, this.favoriteImage, this.productImage, this.productName, this.companyName, this.ratingImage, this.ratingText, this.reviewText, this.priceText1, this.priceText2, this.id, }) { discountText = discountText  ?? "-15%";favoriteImage = favoriteImage  ?? ImageConstant.imgFavorite;productImage = productImage  ?? ImageConstant.imgDownload7RemovebgPreview;productName = productName  ?? "panadol advace exs....";companyName = companyName  ?? "from : gsk company";ratingImage = ratingImage  ?? ImageConstant.imgSignal;ratingText = ratingText  ?? "4.5";reviewText = reviewText  ?? "(1045 Reviews)";priceText1 = priceText1  ?? "235,00";priceText2 = priceText2  ?? "335,00";id = id  ?? ""; }

String? discountText;

String? favoriteImage;

String? productImage;

String? productName;

String? companyName;

String? ratingImage;

String? ratingText;

String? reviewText;

String? priceText1;

String? priceText2;

String? id;

 }
