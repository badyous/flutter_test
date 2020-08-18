
import 'package:fluttertestprovider/models/gameModel.dart';

import 'apiClient.dart';

class GameRepository {
  final ApiClient apiClient;

  GameRepository(this.apiClient) : assert(apiClient != null);

  Future<Game> getGame() {
    //TODO add the possibility to get it from the BDD or if it doesn't exists, fetch it from the web
    return apiClient.getGame();
  }
}
