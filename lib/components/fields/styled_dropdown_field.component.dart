// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

// 🌎 Project imports:
import 'package:starter/extensions/extensions.dart';

class StyledDropdownField<T> extends StatelessWidget {
  const StyledDropdownField({
    Key? key,
    required this.formKey,
    required this.fieldName,
    required this.items,
    this.prefix,
    this.suffix,
    this.initialValue,
    this.hintText,
    this.icon,
    this.iconColor,
    this.validator,
    this.valueTransformer,
    this.onPressed,
    this.onChanged,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey;
  final String fieldName;
  final List<DropdownItem<T>> items;
  final Widget? prefix;
  final Widget? suffix;
  final T? initialValue;
  final String? hintText;
  final Widget? icon;
  final Color? iconColor;
  final FormFieldValidator<T>? validator;
  final dynamic Function(T?)? valueTransformer;
  final VoidCallback? onPressed;
  final ValueChanged<T?>? onChanged;

  String? get errorText => formKey.currentState?.fields[fieldName]?.errorText;

  factory StyledDropdownField.single(
    BuildContext context, {
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    required List<DropdownItem<T>> items,
    dynamic Function(T?)? valueTransformer,
    T? initialValue,
    String? hintText,
    VoidCallback? onPressed,
    ValueChanged<T?>? onChanged,
  }) =>
      StyledDropdownField<T>(
        key: key,
        formKey: formKey,
        fieldName: fieldName,
        items: items,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
        ]),
        valueTransformer: valueTransformer,
        initialValue: initialValue,
        hintText: hintText,
        onPressed: onPressed,
        onChanged: onChanged,
      );

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                prefix ?? const SizedBox(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 25.0,
                      left: prefix != null ? 10.0 : 0.0,
                      right: suffix != null ? 10.0 : 0.0,
                    ),
                    child: FormBuilderDropdown<T>(
                      name: fieldName,
                      validator: validator,
                      initialValue: initialValue,
                      decoration: InputDecoration(
                        icon: icon,
                        iconColor: iconColor,
                        hintText: hintText,
                        hintStyle: const TextStyle(),
                        errorStyle: const TextStyle(
                          fontSize: 0.0,
                          height: 0.0,
                        ),
                        errorText: '',
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      items: items
                          .map<DropdownMenuItem<T>>(
                            (option) => DropdownMenuItem<T>(
                              value: option.value,
                              child: Text(option.text.capitalise),
                            ),
                          )
                          .toList(),
                      selectedItemBuilder: (context) => items
                          .map<Widget>(
                            (option) => Text(
                              option.text.capitalise,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                          .toList(),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                suffix ?? const SizedBox(),
              ],
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
}

class DropdownItem<T> {
  const DropdownItem({
    required this.value,
    required this.text,
  });

  final T value;
  final String text;
}
