// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:starter/configs/configs.dart';

class StyledTextField<T> extends StatelessWidget {
  const StyledTextField({
    Key? key,
    required this.formKey,
    required this.fieldName,
    this.prefix,
    this.suffix,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.hintText,
    this.icon,
    this.iconColor,
    this.validator,
    this.valueTransformer,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.textStyle,
    this.textInputAction,
    this.maxLengthEnforcement,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.width,
    this.readOnly = false,
    this.enabled = true,
    this.obscureText = false,
    this.enableInteractiveSelection = true,
    this.autoFocus = false,
    this.autoCorrect = true,
    this.expands = false,
    this.showCursor = true,
    this.enableSuggestions = false,
    this.onChanged,
    this.onSubmitted,
    this.onSaved,
    this.onReset,
    this.onEditingComplete,
    this.onTap,
  })  : assert(initialValue == null || controller == null),
        assert(minLines == null || minLines > 0),
        assert(maxLines == null || maxLines > 0),
        assert(!expands || (minLines == null && maxLines == null)),
        assert(!obscureText || maxLines == 1),
        assert(maxLength == null || maxLength > 0),
        super(key: key);

  final GlobalKey<FormBuilderState> formKey;
  final String fieldName;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? hintText;
  final Widget? icon;
  final Color? iconColor;
  final FormFieldValidator<String>? validator;
  final ValueTransformer<String?>? valueTransformer;
  final AutovalidateMode autoValidateMode;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;
  final TextInputAction? textInputAction;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final double? width;
  final bool readOnly;
  final bool enabled;
  final bool obscureText;
  final bool enableInteractiveSelection;
  final bool autoFocus;
  final bool autoCorrect;
  final bool expands;
  final bool showCursor;
  final bool enableSuggestions;
  final ValueChanged<String?>? onChanged;
  final ValueChanged<String?>? onSubmitted;
  final FormFieldSetter<String>? onSaved;
  final VoidCallback? onReset;
  final VoidCallback? onEditingComplete;
  final GestureTapCallback? onTap;

  String? get errorText => formKey.currentState?.fields[fieldName]?.errorText;

  factory StyledTextField.phone(
    BuildContext context, {
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
    required String countryCodeFormName,
    required String phoneNumberFormName,
    String? initialValue,
  }) =>
      StyledTextField(
        key: key,
        formKey: formKey,
        fieldName: phoneNumberFormName,
        prefix: FormBuilderField<String>(
          initialValue: const CountryCode(
            name: 'Canada',
            code: 'CA',
            dialCode: '+1',
          ).dialCode,
          name: countryCodeFormName,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          builder: (field) => GestureDetector(
            onTap: () async {
              final code = await const FlCountryCodePicker().showPicker(
                context: context,
                scrollToDeviceLocale: true,
              );

              field.didChange(code?.dialCode);
            },
            child: Text(
              field.value ?? '+1',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          decoration: const InputDecoration(
            hintStyle: TextStyle(),
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
        ),
        initialValue: initialValue,
        hintText: AppLocalizations.of(context).hintPhoneNumber,
        keyboardType: TextInputType.phone,
        enableSuggestions: true,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.numeric(),
          FormBuilderValidators.minLength(5),
          FormBuilderValidators.maxLength(15),
        ]),
      );

  factory StyledTextField.email(
    BuildContext context, {
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    String? initialValue,
  }) =>
      StyledTextField(
        key: key,
        formKey: formKey,
        fieldName: fieldName,
        initialValue: initialValue,
        hintText: AppLocalizations.of(context).hintEmail,
        keyboardType: TextInputType.emailAddress,
        enableSuggestions: true,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.email(),
        ]),
      );

  factory StyledTextField.password(
    BuildContext context, {
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
  }) =>
      StyledTextField(
        key: key,
        formKey: formKey,
        fieldName: fieldName,
        hintText: AppLocalizations.of(context).hintPassword,
        keyboardType: TextInputType.text,
        obscureText: true,
        maxLines: 1,
        enableSuggestions: true,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.minLength(6),
        ]),
      );

  factory StyledTextField.name(
    BuildContext context, {
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    NameFieldType type = NameFieldType.firstName,
  }) =>
      StyledTextField(
        key: key,
        formKey: formKey,
        fieldName: fieldName,
        hintText: type == NameFieldType.firstName
            ? AppLocalizations.of(context).hintFirstName
            : AppLocalizations.of(context).hintLastName,
        keyboardType: TextInputType.name,
        enableSuggestions: true,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
          FormBuilderValidators.minLength(2),
        ]),
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
                      left: prefix != null ? 10.0 : 0.0,
                      right: suffix != null ? 10.0 : 0.0,
                    ),
                    child: FormBuilderTextField(
                      key: key,
                      name: fieldName,
                      validator: validator,
                      initialValue: initialValue,
                      readOnly: readOnly,
                      decoration: InputDecoration(
                        icon: icon,
                        iconColor: iconColor,
                        hintText: hintText,
                        hintStyle: const TextStyle(),
                        errorStyle: const TextStyle(
                          fontSize: 0.0,
                          height: 0.0,
                        ),
                        errorText: kIsWeb ? null : '',
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      onChanged: onChanged,
                      valueTransformer: valueTransformer,
                      enabled: enabled,
                      onSaved: onSaved,
                      autovalidateMode: autoValidateMode,
                      onReset: onReset,
                      focusNode: focusNode,
                      maxLines: maxLines,
                      obscureText: obscureText,
                      textCapitalization: textCapitalization,
                      enableInteractiveSelection: enableInteractiveSelection,
                      maxLengthEnforcement: maxLengthEnforcement,
                      textAlign: textAlign,
                      autofocus: autoFocus,
                      autocorrect: autoCorrect,
                      keyboardType: keyboardType,
                      style: textStyle,
                      controller: controller,
                      textInputAction: textInputAction,
                      maxLength: maxLength,
                      onEditingComplete: onEditingComplete,
                      onSubmitted: onSubmitted,
                      expands: expands,
                      minLines: minLines,
                      showCursor: showCursor,
                      onTap: onTap,
                      enableSuggestions: enableSuggestions,
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

enum NameFieldType {
  firstName,
  lastName,
}
