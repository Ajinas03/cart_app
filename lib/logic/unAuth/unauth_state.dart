part of 'unauth_bloc.dart';

final class UnauthInitial extends UnauthState {
  UnauthInitial() : super(isLoading: true, productsModel: null);
}

class UnauthState {
  bool isLoading;

  ProductsModel? productsModel;

  UnauthState({required this.isLoading, required this.productsModel});
}
