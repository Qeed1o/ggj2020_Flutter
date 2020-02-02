import 'package:flutter_app/dto/update_actions.dart';

class RotateCommand {
  final action = UpdateActions.ROTATE.asString();
  final int currentRow;
  final int currentCol;

  RotateCommand(this.currentRow, this.currentCol);
}

class MoveCommand {
  final action = UpdateActions.MOVE.asString();
  final int newRow;
  final int newCol;
  final int currentRow;
  final int currentCol;

  MoveCommand(this.currentRow, this.currentCol, this.newRow, this.newCol);
}
