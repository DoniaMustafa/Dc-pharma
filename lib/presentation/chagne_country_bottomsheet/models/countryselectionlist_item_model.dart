import '../../../core/app_export.dart';/// This class is used in the [countryselectionlist_item_widget] screen.
class CountryselectionlistItemModel {CountryselectionlistItemModel({this.userImage, this.text, this.checkmarkImage, this.id, }) { userImage = userImage  ?? ImageConstant.imgSaudiArabia1;text = text  ?? "Saudi Arabia";checkmarkImage = checkmarkImage  ?? ImageConstant.imgCheckmarkRed700;id = id  ?? ""; }

String? userImage;

String? text;

String? checkmarkImage;

String? id;

 }
