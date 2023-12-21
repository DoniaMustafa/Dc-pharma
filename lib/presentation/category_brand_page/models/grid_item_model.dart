import '../../../core/app_export.dart';/// This class is used in the [grid_item_widget] screen.
class GridItemModel {GridItemModel({this.image, this.text, this.id, }) { image = image  ?? ImageConstant.imgRectangle18648;text = text  ?? "sanofi";id = id  ?? ""; }

String? image;

String? text;

String? id;

 }
