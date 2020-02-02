import 'package:flutter_app/dto/entry_position.dart';
import 'package:flutter_app/dto/pipe_dto.dart';

final pipeI = PipeDto.byEntryPositions(EntryPosition.TOP, EntryPosition.BOTTOM);
final pipeIRotated =
    PipeDto.byEntryPositions(EntryPosition.RIGHT, EntryPosition.LEFT);

final pipeAngle =
    PipeDto.byEntryPositions(EntryPosition.TOP, EntryPosition.LEFT);
final pipeAngle90 =
    PipeDto.byEntryPositions(EntryPosition.TOP, EntryPosition.RIGHT);
final pipeAngle180 =
    PipeDto.byEntryPositions(EntryPosition.RIGHT, EntryPosition.BOTTOM);
final pipeAngle270 =
    PipeDto.byEntryPositions(EntryPosition.BOTTOM, EntryPosition.LEFT);

final Map<PipeDto, String> pipeAssetsMap = Map.fromEntries([
  MapEntry(pipeI, "assets/img/pipe-i.png"),
  MapEntry(pipeIRotated, "assets/img/pipe-i-rotated.png"),
  MapEntry(pipeAngle, "assets/img/pipe-angle.png"),
  MapEntry(pipeAngle90, "assets/img/pipe-angle-rotated-90.png"),
  MapEntry(pipeAngle180, "assets/img/pipe-angle-rotated-180.png"),
  MapEntry(pipeAngle270, "assets/img/pipe-angle-rotated-270.png"),
]);
