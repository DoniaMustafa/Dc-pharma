import '../../../core/app_export.dart';/// This class is used in the [passwordcomponent_item_widget] screen.
class PasswordcomponentItemModel {PasswordcomponentItemModel({this.confirmPasswordImage, this.confirmPasswordText, this.showPasswordImage, this.id, }) { confirmPasswordImage = confirmPasswordImage  ?? ImageConstant.imgLocation;confirmPasswordText = confirmPasswordText  ?? "confirm password";showPasswordImage = showPasswordImage  ?? ImageConstant.imgEye;id = id  ?? ""; }

String? confirmPasswordImage;

String? confirmPasswordText;

String? showPasswordImage;

String? id;

 }
