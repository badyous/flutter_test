// Using GetIt is a convenient way to provide services and view models
// anywhere we need them in the app.
import 'package:fluttertestprovider/data/apiClient.dart';
import 'package:fluttertestprovider/viewmodels/gameViewModel.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton<ApiClient>(() => ApiClient());
  serviceLocator.registerFactory<GameViewModel>(() => GameViewModel());
}
