import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/Home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      getIt.get<ApiServices>(),
    ),
  );
}
