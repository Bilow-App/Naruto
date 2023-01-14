// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

abstract class FormUtilityAbstract {
  GlobalKey<FormBuilderState> get formKey;
  Map<String, dynamic> get fieldValues;
  dynamic getValue(String fieldName);
  void setValue({required String fieldName, String? value});
  bool isValidValue(String fieldName);
  void invalidateField({required String fieldName, String? errorText});
  void saveAndValidate();
  void reset();
}
