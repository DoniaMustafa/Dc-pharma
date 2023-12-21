// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'passwordcomponent_item_model.dart';/// This class defines the variables used in the [sign_up_2_if_it_from_saudi_arabia_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUp2IfItFromSaudiArabiaModel extends Equatable {SignUp2IfItFromSaudiArabiaModel({this.passwordcomponentItemList = const []}) {  }

List<PasswordcomponentItemModel> passwordcomponentItemList;

SignUp2IfItFromSaudiArabiaModel copyWith({List<PasswordcomponentItemModel>? passwordcomponentItemList}) { return SignUp2IfItFromSaudiArabiaModel(
passwordcomponentItemList : passwordcomponentItemList ?? this.passwordcomponentItemList,
); } 
@override List<Object?> get props => [passwordcomponentItemList];
 }
