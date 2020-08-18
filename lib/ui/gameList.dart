import 'package:flutter/material.dart';
import 'package:fluttertestprovider/models/gameModel.dart';
import 'package:fluttertestprovider/services/service_locator.dart';
import 'package:fluttertestprovider/viewmodels/gameViewModel.dart';
import 'package:provider/provider.dart';

class GameList extends StatefulWidget {
  @override
  _GameListState createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  GameViewModel _gameViewModel = serviceLocator<GameViewModel>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BuildBodyWidget(_gameViewModel),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class BuildBodyWidget extends StatelessWidget {
  final GameViewModel _gameViewModel;

  const BuildBodyWidget(
    this._gameViewModel, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameViewModel>(
      create: (context) => _gameViewModel,
      child: Consumer<GameViewModel>(
        builder: (BuildContext context, GameViewModel value, Widget child) {
          if (value.game == null) {
            value.loadData();
            return Center(child: CircularProgressIndicator());
          } else {
            return buildGameList(value.game.localResults);
          }
        },
      ),
    );
  }

  Widget buildGameList(List<LocalResults> gameLocalResults) {
    return Material(
      child: ListView.builder(
          itemCount: gameLocalResults.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(gameLocalResults[index].title),
            );
          }),
    );
  }
}
