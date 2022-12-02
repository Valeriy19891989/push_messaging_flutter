import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:push_messaging_flutter/push_messaging/converters/push_messaging_remote_message_converter/firebase_remote_message_converter_contract.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_foreground_handler/push_messaging_foreground_handler.dart';

class PushMessageBackgroundHandler {

  final FirebaseRemoteMessageConverterContract convertor;
  final PushMessagingForegroundHandler defaultHandler;

  PushMessageBackgroundHandler({required this.convertor, required this.defaultHandler});

  void processRemotePush(RemoteMessage message) {
    final pushMessageConverted = convertor.toPushMessage(message);
    defaultHandler.receiveBackgroundMessage(pushMessageConverted);
  }
}
