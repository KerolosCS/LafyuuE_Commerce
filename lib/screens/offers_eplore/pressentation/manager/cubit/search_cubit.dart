import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafuu_e_commerce/core/utils/api_service.dart';
import 'package:lafuu_e_commerce/screens/home/data/models/product_model.dart';
// import 'package:lafuu_e_commerce/screens/offers_eplore/data/models/search_model.dart';
part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.api) : super(SearchInitial());
  ApiService api;
  static SearchCubit get(context) => BlocProvider.of(context);

  ProductMedel? searchModel;
  List<Product> res = [];
  void searchProduct(String searchTxt) {
    emit(SearchLoading());
    res = [];
    if (searchTxt == "") {
      emit(EmptySearch());
    } else {
      api.postData(
        'products/search',
        {
          'text': searchTxt,
        },
      ).then((value) {
        emit(SearchSuccess());
        searchModel = ProductMedel.fromJson(value);
        searchModel?.data?.data?.forEach((element) {
          res.add(element);
        });
      }).catchError((e) {
        emit(SearchFailure(e.toString()));
      });
    }
  }
}
