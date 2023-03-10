// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';


@freezed
class User with _$User {
  factory User({
    String? id,
  }) = _User;
}
