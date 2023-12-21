import '../../../core/app_export.dart';/// This class is used in the [merkcomponent_item_widget] screen.
class MerkcomponentItemModel {MerkcomponentItemModel({this.drugIcon, this.medicinesText, this.itemsText, this.id, }) { drugIcon = drugIcon  ?? ImageConstant.img3668843DrugsM;medicinesText = medicinesText  ?? "medicines";itemsText = itemsText  ?? "601 Items";id = id  ?? ""; }

String? drugIcon;

String? medicinesText;

String? itemsText;

String? id;

 }
