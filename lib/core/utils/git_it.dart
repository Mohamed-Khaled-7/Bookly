import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:project/Features/Home/Data/repo/home_repo_imp.dart';
import 'package:project/Features/Home/presentation/views%20model/also_like/also_like_cubit.dart';
import 'package:project/Features/Home/presentation/views%20model/best_seller_cubit/best_seller/best_seller_cubit.dart';
import 'package:project/Features/Home/presentation/views%20model/featured_cubit/featred_cubit_cubit.dart';
import 'package:project/core/utils/api_service.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(apiService: getIt.get<ApiService>()),
  );
  getIt.registerSingleton<BestSellerCubit>(
    BestSellerCubit(homeRepo: getIt.get<HomeRepoImplement>()),
  );
  getIt.registerSingleton<FeaturedCubit>(
    FeaturedCubit(homeRepo: getIt.get<HomeRepoImplement>()),
  );
  getIt.registerSingleton<AlsoLikeCubit>(
    AlsoLikeCubit(homeRepo: getIt.get<HomeRepoImplement>()),
  );
}
