/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

import 'package:lafuu_e_commerce/screens/home/data/models/banner_models.dart';
import 'package:lafuu_e_commerce/screens/home/data/repos/home_repo.dart';

import '../../../../core/utils/api_service.dart';

//All rights -- Kerolos Fady --Flutter Developer
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
