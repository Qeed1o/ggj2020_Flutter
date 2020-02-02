import 'package:flutter/material.dart';
import 'package:flutter_app/dto/game_field_state_dto.dart';
import 'package:flutter_app/ui/widgets/game_field_layout.dart';

class PlumberField extends StatelessWidget {
  final GameFieldDto _state;

  PlumberField(this._state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/img/ducks.jpg",
            )),
      ),
      child: Center(
        child: GameFieldLayout(_state),
      ),
    ));
  }
}
