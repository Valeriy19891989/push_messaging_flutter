part of 'main_screen_bloc.build.dart';

@freezed
class MainScreenBlocEvent with _$MainScreenBlocEvent {
  const factory MainScreenBlocEvent.startAllServices() = _MainScreenBlocEventStartAllServices;
  const factory MainScreenBlocEvent.changeToken({required PushToken token}) = _MainScreenBlocEventChangeToken;
}
