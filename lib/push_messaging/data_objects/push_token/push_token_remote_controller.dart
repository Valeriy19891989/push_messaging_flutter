

import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token.dart';

abstract class PushTokenRemoteControllerContract {
  void sendPushTokenToServer({required PushToken token});
  void removePushTokenFromServer();
  bool get isSend;
}
