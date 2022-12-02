


import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';

abstract class PushMessageJsonConverterContract {
  String toJson(PushMessage message);

  PushMessage? fromJson(String jsonStr);
}
