import 'package:flutter_app/dto/pipe_dto.dart';

class GameFieldDto {
  List<List<PipeDto>> rows;

  GameFieldDto(List<List<PipeDto>> gameField) {
    this.rows = gameField;
  }

  factory GameFieldDto.fromJson(dynamic json) {
    print("[GameFieldDto] fromJson: jsonType=${json.runtimeType}");
    final jsonRows = json["rows"];
    print("[GameFieldDto] fromJson: jsonRows=$jsonRows");
    final gameFieldRows = new List<List<PipeDto>>();

    gameFieldRows.add(_convertJsonToRow(jsonRows[0]));
    gameFieldRows.add(_convertJsonToRow(jsonRows[1]));
    gameFieldRows.add(_convertJsonToRow(jsonRows[2]));
    gameFieldRows.add(_convertJsonToRow(jsonRows[3]));
    gameFieldRows.add(_convertJsonToRow(jsonRows[4]));
    return GameFieldDto(gameFieldRows);
  }

  static List<PipeDto> _convertJsonToRow(dynamic json) {
    print("[GameFieldDto] _convertJsonToRow: json=$json");
    final row = List<PipeDto>();
    row.add(PipeDto.fromJson(json[0]));
    row.add(PipeDto.fromJson(json[1]));
    row.add(PipeDto.fromJson(json[2]));
    row.add(PipeDto.fromJson(json[3]));
    row.add(PipeDto.fromJson(json[4]));
    return row;
  }
}
