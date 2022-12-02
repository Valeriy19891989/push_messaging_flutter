part of 'main_screen_bloc.build.dart';

@freezed
class MainScreenBlocState with _$MainScreenBlocState {
  const factory MainScreenBlocState({
    PushToken? fcmToken,
  }) = _MainScreenBlocState;
}
