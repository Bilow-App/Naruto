// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';

class FormUtility implements FormUtilityAbstract {
  final GlobalKey<FormBuilderState> _formKey;

  FormUtility({GlobalKey<FormBuilderState>? formKey})
      : _formKey = formKey ?? GlobalKey<FormBuilderState>();

  @override
  GlobalKey<FormBuilderState> get formKey => _formKey;

  @override
  Map<String, dynamic> get fieldValues {
    return _formKey.currentState?.value ?? <String, dynamic>{};
  }

  @override
  dynamic getValue(String fieldName) {
    return _formKey.currentState?.value[fieldName];
  }

  @override
  void setValue({required String fieldName, String? value}) {
    _formKey.currentState?.fields[fieldName]?.didChange(value);
  }

  @override
  bool isValidValue(String fieldName) {
    return _formKey.currentState?.fields[fieldName]?.errorText == null;
  }

  @override
  void invalidateField({required String fieldName, String? errorText}) {
    _formKey.currentState?.invalidateField(
      name: fieldName,
      errorText: errorText,
    );
  }

  @override
  void saveAndValidate() {
    _formKey.currentState?.saveAndValidate();
  }

  @override
  void reset() {
    _formKey.currentState?.reset();
  }
}
