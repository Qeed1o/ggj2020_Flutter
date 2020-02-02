enum UpdateActions {
  MOVE, ROTATE
}

extension UpdateActionsExtension on UpdateActions {
  String asString() {
    switch(this) {
      case UpdateActions.MOVE: {
        return "move";
      }
      break;

      case UpdateActions.ROTATE: {
        return "rotate";
      }
      break;
    }
  }
}
