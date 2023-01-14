// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';

part 'network.event.dart';
part 'network.state.dart';
part 'network.bloc.freezed.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  final NetworkServiceAbstract _network;
  final LoggerUtilityAbstract _logger;

  NetworkBloc()
      : _network = GetIt.instance.get<NetworkServiceAbstract>(),
        _logger = GetIt.instance.get<LoggerUtilityAbstract>(),
        super(const NetworkState.isInitial()) {
    on<NetworkEvent>((event, emit) {
      event.when(
        onConnected: () {
          _logger.log('onConnected()');
          emit(const NetworkState.isConnected());
        },
        onDisconnected: () {
          _logger.log('onDisconnected()');
          emit(const NetworkState.isDisconnected());
        },
      );
    });
  }

  StreamSubscription? subscription;

  void hydrate() {
    _logger.log('Hydrated');

    subscription = _network.onConnectivityChanged(
      onDisconnected: () => add(const NetworkEvent.onDisconnected()),
      onConnected: () => add(const NetworkEvent.onConnected()),
    );
  }

  @override
  Future<void> close() {
    if (subscription != null) subscription!.cancel();

    return super.close();
  }
}
