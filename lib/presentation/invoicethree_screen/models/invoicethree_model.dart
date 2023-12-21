// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardlist2_item_model.dart';/// This class defines the variables used in the [invoicethree_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InvoicethreeModel extends Equatable {InvoicethreeModel({this.productcardlist2ItemList = const []}) {  }

List<Productcardlist2ItemModel> productcardlist2ItemList;

InvoicethreeModel copyWith({List<Productcardlist2ItemModel>? productcardlist2ItemList}) { return InvoicethreeModel(
productcardlist2ItemList : productcardlist2ItemList ?? this.productcardlist2ItemList,
); } 
@override List<Object?> get props => [productcardlist2ItemList];
 }
