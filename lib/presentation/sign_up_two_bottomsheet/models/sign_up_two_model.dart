// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'signuptwo_item_model.dart';/// This class defines the variables used in the [sign_up_two_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpTwoModel extends Equatable {SignUpTwoModel({this.signuptwoItemList = const []}) {  }

List<SignuptwoItemModel> signuptwoItemList;

SignUpTwoModel copyWith({List<SignuptwoItemModel>? signuptwoItemList}) { return SignUpTwoModel(
signuptwoItemList : signuptwoItemList ?? this.signuptwoItemList,
); } 
@override List<Object?> get props => [signuptwoItemList];
 }
