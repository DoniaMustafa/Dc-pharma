// ignore_for_file: must_be_immutable

part of 'invoicethree_one_bloc.dart';

/// Represents the state of InvoicethreeOne in the application.
class InvoicethreeOneState extends Equatable {
  InvoicethreeOneState({
    this.searchController,
    this.invoicethreeOneModelObj,
  });

  TextEditingController? searchController;

  InvoicethreeOneModel? invoicethreeOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        invoicethreeOneModelObj,
      ];
  InvoicethreeOneState copyWith({
    TextEditingController? searchController,
    InvoicethreeOneModel? invoicethreeOneModelObj,
  }) {
    return InvoicethreeOneState(
      searchController: searchController ?? this.searchController,
      invoicethreeOneModelObj:
          invoicethreeOneModelObj ?? this.invoicethreeOneModelObj,
    );
  }
}
