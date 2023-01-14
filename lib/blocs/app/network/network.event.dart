part of 'network.bloc.dart';

@freezed
class NetworkEvent with _$NetworkEvent {
  const factory NetworkEvent.onConnected() = _OnConnected;
  const factory NetworkEvent.onDisconnected() = _OnDisconnected;
}
