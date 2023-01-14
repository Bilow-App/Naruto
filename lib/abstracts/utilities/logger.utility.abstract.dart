abstract class LoggerUtilityAbstract {
  void log(dynamic message, {LogLevel level = LogLevel.debug});
}

enum LogLevel {
  errors,
  warnings,
  trace,
  debug,
}
