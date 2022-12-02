import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';

abstract class FirebaseRemoteMessageConverterContract {
  PushMessage toPushMessage(RemoteMessage message);
}
