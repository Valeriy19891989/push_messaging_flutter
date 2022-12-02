import 'package:flutter/foundation.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token_remote_controller.dart';

class PushTokenRemoteControllerMock extends PushTokenRemoteControllerContract {

  @override
  void removePushTokenFromServer() {
    // TODO: implement removePushTokenFromServer
  }

  @override
  void sendPushTokenToServer({required PushToken token}) {
    debugPrint(token.toString());
  }

  @override
  bool get isSend => false;

}