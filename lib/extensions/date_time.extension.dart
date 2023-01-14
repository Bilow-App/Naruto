extension DateTimeX on DateTime {
  bool get isUnderage =>
      (DateTime(DateTime.now().year, month, day).isAfter(DateTime.now())
          ? DateTime.now().year - year - 1
          : DateTime.now().year - year) <
      18;

  bool get hasPassedSevenDays {
    return DateTime.now().difference(this).inDays >= 7;
  }

  bool get hasPassedThirtyDays {
    return DateTime.now().difference(this).inDays >= 30;
  }
}
