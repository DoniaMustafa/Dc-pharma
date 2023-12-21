// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardlist_item_model.dart';/// This class defines the variables used in the [invoicetwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InvoicetwoModel extends Equatable {InvoicetwoModel({this.productcardlistItemList = const []}) {  }

List<ProductcardlistItemModel> productcardlistItemList;

InvoicetwoModel copyWith({List<ProductcardlistItemModel>? productcardlistItemList}) { return InvoicetwoModel(
productcardlistItemList : productcardlistItemList ?? this.productcardlistItemList,
); } 
@override List<Object?> get props => [productcardlistItemList];
 }
