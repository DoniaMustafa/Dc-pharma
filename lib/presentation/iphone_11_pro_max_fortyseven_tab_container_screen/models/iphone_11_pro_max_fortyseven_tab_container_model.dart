// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'gradient_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_fortyseven_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxFortysevenTabContainerModel extends Equatable {Iphone11ProMaxFortysevenTabContainerModel({this.gradientItemList = const []}) {  }

List<GradientItemModel> gradientItemList;

Iphone11ProMaxFortysevenTabContainerModel copyWith({List<GradientItemModel>? gradientItemList}) { return Iphone11ProMaxFortysevenTabContainerModel(
gradientItemList : gradientItemList ?? this.gradientItemList,
); } 
@override List<Object?> get props => [gradientItemList];
 }
