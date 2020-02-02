import 'package:flutter/material.dart';
import 'package:flutter_app/dto/pipe_dto.dart';
import 'package:flutter_app/ui/widgets/pipe_widget.dart';

class GameFieldCell extends StatelessWidget {

  final PipeDto _pipeDto;

  GameFieldCell(this._pipeDto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PipeWidget(_pipeDto),
      constraints: BoxConstraints.tightFor(height: 32, width: 32),
    );
  }
}