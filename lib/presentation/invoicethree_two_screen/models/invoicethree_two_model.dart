// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardlist1_item_model.dart';/// This class defines the variables used in the [invoicethree_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InvoicethreeTwoModel extends Equatable {InvoicethreeTwoModel({this.productcardlist1ItemList = const []}) {  }

List<Productcardlist1ItemModel> productcardlist1ItemList;

InvoicethreeTwoModel copyWith({List<Productcardlist1ItemModel>? productcardlist1ItemList}) { return InvoicethreeTwoModel(
productcardlist1ItemList : productcardlist1ItemList ?? this.productcardlist1ItemList,
); } 
@override List<Object?> get props => [productcardlist1ItemList];
 }
