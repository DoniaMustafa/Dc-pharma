// ignore_for_file: must_be_immutable

part of 'flash_sale_bloc.dart';

/// Represents the state of FlashSale in the application.
class FlashSaleState extends Equatable {
  FlashSaleState({this.flashSaleModelObj});

  FlashSaleModel? flashSaleModelObj;

  @override
  List<Object?> get props => [
        flashSaleModelObj,
      ];
  FlashSaleState copyWith({FlashSaleModel? flashSaleModelObj}) {
    return FlashSaleState(
      flashSaleModelObj: flashSaleModelObj ?? this.flashSaleModelObj,
    );
  }
}
