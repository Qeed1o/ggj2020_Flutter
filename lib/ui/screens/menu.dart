import 'package:flutter/material.dart';
import 'package:flutter_app/dto/Role.dart';
import 'package:flutter_app/dto/game_field_state_dto.dart';
import 'package:flutter_app/net/api_service.dart';
import 'package:flutter_app/ui/screens/plumber_field.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        onPressed: () {
          _onStartGame(context);
        },
        child: Text('Start game'),
      ),
    ));
  }

  _onStartGame(BuildContext context) async {
    final Role role = await ApiService.instance.getRole();
    GameFieldDto gameField = role == Role.PLUMBER
        ? await ApiService.instance.getRandomGameField()
        : await ApiService.instance.coachGameField();
    _navigate(context, gameField);
  }

  _navigate(BuildContext context, GameFieldDto gameField) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Center(child: PlumberField(gameField))));
  }
}
