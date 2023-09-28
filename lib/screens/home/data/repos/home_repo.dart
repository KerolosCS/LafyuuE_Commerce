import 'package:lafuu_e_commerce/screens/home/data/models/banner_models.dart';

abstract class HomeRepo {
  Future<BannerModel> fetchBanners();
}
