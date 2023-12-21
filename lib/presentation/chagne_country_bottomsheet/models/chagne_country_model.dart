// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'countryselectionlist_item_model.dart';/// This class defines the variables used in the [chagne_country_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ChagneCountryModel extends Equatable {ChagneCountryModel({this.countryselectionlistItemList = const []}) {  }

List<CountryselectionlistItemModel> countryselectionlistItemList;

ChagneCountryModel copyWith({List<CountryselectionlistItemModel>? countryselectionlistItemList}) { return ChagneCountryModel(
countryselectionlistItemList : countryselectionlistItemList ?? this.countryselectionlistItemList,
); } 
@override List<Object?> get props => [countryselectionlistItemList];
 }
