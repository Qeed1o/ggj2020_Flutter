import 'package:flutter_app/dto/entry_position.dart';
import 'package:tuple/tuple.dart';

class PipeDto {
  Tuple2<EntryPosition, EntryPosition> entryPositions;

  PipeDto(this.entryPositions);

  PipeDto.byEntryCodes(int first, int second) {
    this.entryPositions = Tuple2(EntryPositionExtension.fromCode(first),
        EntryPositionExtension.fromCode(second));
  }

  PipeDto.byEntryPositions(EntryPosition first, EntryPosition second) {
    this.entryPositions = Tuple2(first, second);
  }

  factory PipeDto.fromJson(dynamic json) {
    print("[PipeDto] fromJson: json=$json");
    return PipeDto.byEntryCodes(
        json["entryPositions"][0], json["entryPositions"][1]);
  }

  @override
  String toString() {
    return "PipeDto {${entryPositions.item1}, ${entryPositions.item2}";
  }

  @override
  // TODO: implement hashCode
  int get hashCode => toString().hashCode;

  @override
  bool operator ==(other) {
    return hashCode == other.hashCode;
  }
}
