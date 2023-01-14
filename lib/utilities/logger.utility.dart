// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:stack_trace/stack_trace.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';

class LoggerUtility implements LoggerUtilityAbstract {
  @override
  void log(dynamic message, {LogLevel level = LogLevel.debug}) {
    if (_getLevel(level) <= _maxLevel) {
      final traceFrame = Trace.current().terse.frames.elementAt(1);
      final file = traceFrame.library.split('/').last;
      final member = traceFrame.member!.startsWith('[')
          ? traceFrame.member?.substring(1, traceFrame.member!.length - 1)
          : traceFrame.member;
      _print(
        '[ $file -> $member ${traceFrame.line}:${traceFrame.column} ] => '
        '$message',
      );
    }
  }

  final int _maxLevel = 4;

  int _getLevel(LogLevel level) {
    return LogLevel.values.indexOf(level);
  }

  void _print(String text) => RegExp('.{1,800}')
      .allMatches(text)
      .forEach((match) => kReleaseMode ? null : debugPrint(match.group(0)));
}
