import 'dart:convert';

import 'package:fluttertestprovider/models/gameModel.dart';
import 'package:fluttertestprovider/utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<Game> getGame() async {
    var gameResponse = await http.get(Constants.url);
    if (gameResponse.statusCode != 200) {
      throw Exception('error');
    }

    var gameJson = jsonDecode(gameResponse.body);
    return Game.fromJson(gameJson);
  }
}
