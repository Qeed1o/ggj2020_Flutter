enum EntryPosition {
  TOP, RIGHT, BOTTOM, LEFT
}

extension EntryPositionExtension on EntryPosition {
  static EntryPosition fromCode(int code) => EntryPosition.values[code];
  int code() => this.index;
  EntryPosition next() => fromCode((this.code() + 1) % EntryPosition.values.length);
}
