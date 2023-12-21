// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'section_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_fortyseven_page],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxFortysevenModel extends Equatable {Iphone11ProMaxFortysevenModel({this.sectionItemList = const []}) {  }

List<SectionItemModel> sectionItemList;

Iphone11ProMaxFortysevenModel copyWith({List<SectionItemModel>? sectionItemList}) { return Iphone11ProMaxFortysevenModel(
sectionItemList : sectionItemList ?? this.sectionItemList,
); } 
@override List<Object?> get props => [sectionItemList];
 }
