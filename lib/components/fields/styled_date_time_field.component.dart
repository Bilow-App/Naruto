// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:starter/configs/configs.dart';

class StyledDateTimeField extends StatelessWidget {
  const StyledDateTimeField({
    Key? key,
    required this.formKey,
    required this.fieldName,
    this.prefix,
    this.suffix,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.initialDate,
    this.currentDate,
    this.firstDate,
    this.lastDate,
    this.initialTime = const TimeOfDay(hour: 12, minute: 0),
    this.hintText,
    this.icon,
    this.iconColor,
    this.validator,
    this.valueTransformer,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.text,
    this.inputType = InputType.both,
    this.textStyle,
    this.textInputAction,
    this.initialDatePickerMode = DatePickerMode.day,
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
  final DateTime? initialValue;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime? currentDate;
  final TimeOfDay initialTime;
  final String? hintText;
  final Widget? icon;
  final Color? iconColor;
  final FormFieldValidator<DateTime>? validator;
  final ValueTransformer<DateTime?>? valueTransformer;
  final AutovalidateMode autoValidateMode;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final InputType inputType;
  final TextStyle? textStyle;
  final TextInputAction? textInputAction;
  final DatePickerMode initialDatePickerMode;
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
  final ValueChanged<DateTime?>? onChanged;
  final ValueChanged<DateTime?>? onSubmitted;
  final FormFieldSetter<DateTime>? onSaved;
  final VoidCallback? onReset;
  final VoidCallback? onEditingComplete;
  final GestureTapCallback? onTap;

  String? get errorText => formKey.currentState?.fields[fieldName]?.errorText;

  factory StyledDateTimeField.dob(
    BuildContext context, {
    Key? key,
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    ValueChanged<DateTime?>? onChanged,
  }) =>
      StyledDateTimeField(
        key: key,
        formKey: formKey,
        fieldName: fieldName,
        hintText: AppLocalizations.of(context).hintDob,
        inputType: InputType.date,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        initialDatePickerMode: DatePickerMode.year,
        onChanged: onChanged,
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
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
                      top: 25.0,
                      left: prefix != null ? 10.0 : 0.0,
                      right: suffix != null ? 10.0 : 0.0,
                    ),
                    child: FormBuilderDateTimePicker(
                      name: fieldName,
                      validator: validator,
                      initialValue: initialValue,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
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
                      valueTransformer: valueTransformer,
                      enabled: enabled,
                      autovalidateMode: autoValidateMode,
                      initialTime: initialTime,
                      keyboardType: keyboardType,
                      inputType: inputType,
                      textAlign: textAlign,
                      autofocus: autoFocus,
                      obscureText: obscureText,
                      autocorrect: autoCorrect,
                      maxLines: minLines,
                      expands: expands,
                      initialDatePickerMode: initialDatePickerMode,
                      initialEntryMode: DatePickerEntryMode.calendar,
                      timePickerInitialEntryMode: TimePickerEntryMode.dial,
                      format: DateFormat('MMMM dd, yyyy'),
                      initialDate: initialDate,
                      firstDate: firstDate,
                      lastDate: lastDate,
                      currentDate: currentDate,
                      onEditingComplete: onEditingComplete,
                      onChanged: onChanged,
                      onSaved: onSaved,
                      onReset: onReset,
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
