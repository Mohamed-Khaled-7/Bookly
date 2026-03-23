import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:project/Features/Home/Data/repo/home_repo_imp.dart';
import 'package:project/core/utils/api_service.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(apiService: getIt.get<ApiService>()),
  );
}
