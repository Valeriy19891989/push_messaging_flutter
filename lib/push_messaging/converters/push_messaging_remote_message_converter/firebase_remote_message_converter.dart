import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:push_messaging_flutter/push_messaging/converters/push_messaging_remote_message_converter/firebase_remote_message_converter_contract.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message_notifications.build.dart';

class FirebaseRemoteMessageConverter extends FirebaseRemoteMessageConverterContract {
  PushMessageNotification _convertToNotification(Map<String, dynamic>? data) {
    Uri? uri;
    try {
      final linkStr = data?["deeplink"];
      if (linkStr != null) {
        uri = Uri.tryParse(linkStr);
      }
    } catch (error) {
      debugPrint("Невозможно распарсить deeplink в в пуш сообщении");
    }

    return PushMessageNotification(
      message: data?["message"],
      title: data?["title"],
      deeplink: uri,
    );
  }

  Map<String, dynamic>? _decodeJsonOrNull(String? jsonString) {
    if (jsonString == null) {
      return null;
    }
    return json.decode(jsonString);
  }

  PushMessage _toNotificationMessage(RemoteMessage message) {
    final notificationData = _decodeJsonOrNull(message.data["notification"]);

    PushMessageNotification? notification;
    if (notificationData != null) {
      notification = _convertToNotification(notificationData);
    }

    return PushMessage(
      id: message.messageId,
      sentTime: message.sentTime,
      notification: notification,
      type: 'notification',
    );
  }

  @override
  PushMessage toPushMessage(RemoteMessage message) {
    return _toNotificationMessage(message);
  }
}
