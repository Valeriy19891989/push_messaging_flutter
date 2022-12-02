


import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';

abstract class PushMessageTapSubscriberContract {
  bool get isSubscribed;
  Future<void> subscribe(void Function(PushMessage push) onPushReceived, void Function(dynamic error)? onError);
  Future<void> unsubscribe();
}
