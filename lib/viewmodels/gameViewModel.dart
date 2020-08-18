import 'package:flutter/foundation.dart';
import 'package:fluttertestprovider/data/apiClient.dart';
import 'package:fluttertestprovider/data/gameRepository.dart';
import 'package:fluttertestprovider/models/gameModel.dart';

class GameViewModel extends ChangeNotifier {
  GameRepository _gameRepository = GameRepository(ApiClient());

  Game game;

  void loadData() async {
    game = await _gameRepository.getGame();

    notifyListeners();
  }
}
