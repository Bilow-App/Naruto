// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class StyledCodeField extends StatelessWidget {
  const StyledCodeField({
    Key? key,
    required this.formKey,
    required this.fieldName,
    this.pinLength = 6,
    this.controller,
    this.focusNode,
    this.onCompleted,
    this.onSubmitted,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey;
  final String fieldName;
  final int pinLength;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onSubmitted;

  String? get errorText => formKey.currentState?.fields[fieldName]?.errorText;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: kIsWeb ? 10.0 : 0.0,
            ),
            decoration: errorText == null
                ? BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black45,
                      width: 1.5,
                    ),
                  )
                : BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.red,
                      width: 1.5,
                    ),
                  ),
            constraints: const BoxConstraints(
              minHeight: 55.0,
            ),
            child: Center(
              child: FormBuilderField<String>(
                name: fieldName,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.equalLength(pinLength),
                  FormBuilderValidators.numeric(),
                ]),
                decoration: const InputDecoration(
                  errorStyle: TextStyle(
                    fontSize: 0.0,
                    height: 0.0,
                  ),
                  errorText: '',
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
                builder: (field) => _buildPinCodeTextField(
                  onChanged: field.didChange,
                ),
              ),
            ),
          ),
          if (errorText != null && !kIsWeb)
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                errorText!,
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      );

  Widget _buildPinCodeTextField({
    ValueChanged<String>? onChanged,
  }) =>
      Row(
        children: List<Widget>.generate(
          pinLength,
          (index) => Container(
            color: Colors.grey,
            width: 40.0,
            child: TextField(
              onChanged: onChanged,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                counterText: '',
              ),
              style: const TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
}
