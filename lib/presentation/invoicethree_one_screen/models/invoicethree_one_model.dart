// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'invoicethreeone_item_model.dart';/// This class defines the variables used in the [invoicethree_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InvoicethreeOneModel extends Equatable {InvoicethreeOneModel({this.invoicethreeoneItemList = const []}) {  }

List<InvoicethreeoneItemModel> invoicethreeoneItemList;

InvoicethreeOneModel copyWith({List<InvoicethreeoneItemModel>? invoicethreeoneItemList}) { return InvoicethreeOneModel(
invoicethreeoneItemList : invoicethreeoneItemList ?? this.invoicethreeoneItemList,
); } 
@override List<Object?> get props => [invoicethreeoneItemList];
 }
