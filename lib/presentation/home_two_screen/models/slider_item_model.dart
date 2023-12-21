import '../../../core/app_export.dart';/// This class is used in the [slider_item_widget] screen.
class SliderItemModel {SliderItemModel({this.img, this.gradient, this.id, }) { img = img  ?? ImageConstant.imgImg;gradient = gradient  ?? ImageConstant.imgGradient1;id = id  ?? ""; }

String? img;

String? gradient;

String? id;

 }
