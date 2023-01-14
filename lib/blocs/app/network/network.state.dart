part of 'network.bloc.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState.isInitial() = _IsInitial;
  const factory NetworkState.isConnected() = _IsConnected;
  const factory NetworkState.isDisconnected() = _IsDisconnected;
}
