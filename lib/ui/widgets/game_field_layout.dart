import 'package:flutter/material.dart';
import 'package:flutter_app/dto/game_field_state_dto.dart';
import 'package:flutter_app/dto/pipe_dto.dart';
import 'package:flutter_app/ui/widgets/pipe_widget.dart';

class GameFieldLayout extends StatefulWidget {
  final GameFieldDto _field;

  GameFieldLayout(this._field);

  @override
  State<StatefulWidget> createState() => _GameFieldState(_field);
}

class _GameFieldState extends State<GameFieldLayout> {
  GameFieldDto _fieldDto;

  _GameFieldState(this._fieldDto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GridView.count(
        crossAxisCount: 5,
        children: _mapFieldToWidgets(),
      ),
    ));
  }

  List<Widget> _mapFieldToWidgets() {
    final List<List<Widget>> widgetField =
        _fieldDto.rows.map((row) => _mapRowToWidgets(row)).toList();
    final widgetList = widgetField.reduce((accumulator, nextRow) {
      accumulator.addAll(nextRow);
      return accumulator;
    });
    print(
        "[GameFieldLayout] _mapFieldToWidgets: widgetList.runtimeType=${widgetList.runtimeType}");
    return widgetList;
  }

  List<Widget> _mapRowToWidgets(List<PipeDto> row) =>
      row.map((pipe) => _mapPipeDtoToWidget(pipe)).toList();

  Widget _mapPipeDtoToWidget(PipeDto pipe) => FittedBox(
        child: PipeWidget(pipe),
        fit: BoxFit.fill,
      );

  rotate() {}

  replace() {}
}
