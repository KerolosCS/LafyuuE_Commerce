import 'package:lafuu_e_commerce/screens/home/data/models/banner_models.dart';
import 'package:lafuu_e_commerce/screens/home/data/repos/home_repo.dart';

import '../../../../core/utils/api_service.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);
  @override
  Future<BannerModel> fetchBanners() async {
    Map<String, dynamic> data = await apiService.get(endPoint: 'banners');
    BannerModel model;
    model = BannerModel.fromJson(data);

    return model;
  }
}
