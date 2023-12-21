import '../../../core/app_export.dart';/// This class is used in the [orderdetailslist_item_widget] screen.
class OrderdetailslistItemModel {OrderdetailslistItemModel({this.onTheWayText, this.billNumberText, this.orderDateText, this.priceText, this.paymentStatusText, this.paymentMethodText, this.id, }) { onTheWayText = onTheWayText  ?? "On the way to you";billNumberText = billNumberText  ?? "Bill NO.23455-64327";orderDateText = orderDateText  ?? "ordered 20/11/2023";priceText = priceText  ?? "235,00";paymentStatusText = paymentStatusText  ?? "Payment status:";paymentMethodText = paymentMethodText  ?? "Paiement when recieving";id = id  ?? ""; }

String? onTheWayText;

String? billNumberText;

String? orderDateText;

String? priceText;

String? paymentStatusText;

String? paymentMethodText;

String? id;

 }
