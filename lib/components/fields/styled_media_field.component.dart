// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/configs/configs.dart';

class StyledMediaField extends StatelessWidget {
  StyledMediaField({
    Key? key,
    required this.formKey,
    required this.fieldName,
    this.initialValue,
    this.onChanged,
  })  : _media = GetIt.instance.get<MediaUtilityAbstract>(),
        super(key: key);

  final GlobalKey<FormBuilderState> formKey;
  final String fieldName;
  final String? initialValue;
  final ValueChanged<Uint8List?>? onChanged;
  final MediaUtilityAbstract _media;

  final _size = 120.0;

  Uint8List? get _selfie => formKey.currentState?.fields[fieldName]?.value;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FormBuilderField<Uint8List?>(
            name: fieldName,
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
            onChanged: onChanged,
            builder: (field) => GestureDetector(
              onTap: () async => _openImagePicker(context, field),
              child: Container(
                height: _size,
                width: _size,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 2.5,
                  ),
                ),
                child: _selfie != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.memory(
                          _selfie!,
                          width: _size,
                          height: _size,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            AppLocalizations.of(context).hintImage,
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          const Icon(Icons.add_photo_alternate_outlined),
                        ],
                      ),
              ),
            ),
          ),
        ],
      );

  void _openImagePicker(BuildContext context, FormFieldState field) async {
    final pickedFile = await _media.imageFromGallery;

    field.didChange(pickedFile);
  }
}
