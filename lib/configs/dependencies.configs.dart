// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';
import 'package:starter/services/services.dart';
import 'package:starter/utilities/utilities.dart';

void initDependencies() {
  GetIt dependencies = GetIt.instance;

  _initServices(dependencies);
  _initUtilities(dependencies);
  _initApis(dependencies);
  _initRepos(dependencies);
}

void _initServices(GetIt dependencies) => dependencies
  ..registerFactory<AuthServiceAbstract>(() => AuthService())
  ..registerFactory<GraphqlServiceAbstract>(() => GraphQLService())
  ..registerFactory<NetworkServiceAbstract>(() => NetworkService())
  ..registerFactory<RestServiceAbstract>(() => RestService())
  ..registerFactory<ReviewServiceAbstract>(() => ReviewService())
  ..registerFactory<SharedPrefsServiceAbstract>(() => SharedPrefsService())
  ..registerFactory<StorageServiceAbstract>(() => StorageService());

void _initUtilities(GetIt dependencies) => dependencies
  ..registerFactory<LoggerUtilityAbstract>(() => LoggerUtility())
  ..registerFactory<MediaUtilityAbstract>(() => MediaUtility())
  ..registerFactory<SecureStorageUtilityAbstract>(() => SecureStorageUtility())
  ..registerFactory<ToastUtilityAbstract>(() => ToastUtility())
  ..registerFactoryParam<FormUtilityAbstract, GlobalKey<FormBuilderState>,
      void>((formKey, _) => FormUtility(formKey: formKey))
  ..registerSingleton<NavigationUtilityAbstract>(NavigationUtility());

void _initApis(GetIt dependencies) {}

void _initRepos(GetIt dependencies) {}
