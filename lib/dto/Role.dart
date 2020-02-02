enum Role {
  PLUMBER,
  EXPERT
}

extension RoleExtension on Role {
  static Role fromBoolean(bool role) =>
    role
      ? Role.PLUMBER
      : Role.EXPERT;
}