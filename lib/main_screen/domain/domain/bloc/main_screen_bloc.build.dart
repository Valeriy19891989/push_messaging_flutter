import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_foreground_handler/push_messaging_foreground_handler.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_service/push_messaging_service.build.dart';

part 'main_screen_bloc.build.freezed.dart';

part 'main_screen_bloc_event.dart';

part 'main_screen_bloc_state.dart';

class MainScreenBloc extends Bloc<MainScreenBlocEvent, MainScreenBlocState> {
  final PushMessagingService pushService;
  final PushMessagingForegroundHandler handler;

  MainScreenBloc({required this.pushService, required this.handler})
      : super(const MainScreenBlocState()) {
    on<_MainScreenBlocEventStartAllServices>(
        (event, emit) => _onStartAllServices(event, emit));

    on<_MainScreenBlocEventChangeToken>(
    (event, emit) => _onChangeToken(event, emit));
  }

  void _onStartAllServices(_MainScreenBlocEventStartAllServices event, emit) async {
    await _startFirebase();
    await _startPushService();
    await _startPushHandler();
  }

  void _onChangeToken(_MainScreenBlocEventChangeToken event, emit) async {
     emit(state.copyWith(fcmToken: event.token));
  }

  Future<void> _startPushService() async {
    pushService.actions.listen((action) {
      action.whenOrNull(
          onChangingToken: (token){
         add(_MainScreenBlocEventChangeToken(token:token));
      });
    });

    await pushService.start();
  }

  Future<void> _startPushHandler() async {
    await handler.init();
  }

  Future<void> _startFirebase() async{
    await Firebase.initializeApp();
  }
}
