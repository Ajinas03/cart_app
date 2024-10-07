import 'package:bloc/bloc.dart';
import 'package:cart_app/model/products_model.dart';
import 'package:cart_app/repository/product_repo.dart';
import 'package:meta/meta.dart';

part 'unauth_event.dart';
part 'unauth_state.dart';

class UnauthBloc extends Bloc<UnauthEvent, UnauthState> {
  UnauthBloc() : super(UnauthInitial()) {
    on<UnauthEvent>((event, emit) async {
      if (event is GetProducts) {
        ProductsModel? prodModel;

        emit(UnauthState(isLoading: true, productsModel: prodModel));

        prodModel = await ProductRepo.getUnauthProducts();

        emit(UnauthState(isLoading: false, productsModel: prodModel));
      }
    });
  }
}
