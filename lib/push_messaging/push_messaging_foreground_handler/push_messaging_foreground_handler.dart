import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:push_messaging_flutter/class_factory/class_factory.dart';
import 'package:push_messaging_flutter/local_notification_service/local_notification_service.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_service/push_messaging_service.build.dart';


class PushMessagingForegroundHandler {

  static PushMessagingForegroundHandler? _instance;

  PushMessagingForegroundHandler._(this.pushMessagingService, this.localNotificationService);

  static PushMessagingForegroundHandler getInstance(){
    return  _instance ??= PushMessagingForegroundHandler(
        localNotificationService: PushMessagingFactory.notificationService(),
        pushMessagingService: PushMessagingService.getInstance(),
    );
  }

  final PushMessagingService pushMessagingService;
  final LocalNotificationService localNotificationService;

  PushMessagingForegroundHandler({
    required this.localNotificationService,
    required this.pushMessagingService,
  }) {
    init();
  }

  void _showNotification(PushMessage message) {
    if (!message.isNotificationExists()) {
      debugPrint("В пуш сообщении нет данных для нотификации");
      return;
    }

    final pushJson = message.toJson();

    localNotificationService.showNotification(
      title: message.notification!.title!,
      body: message.notification!.message!,
      payload: jsonEncode(pushJson),
    );
  }

  void _handleCommonMessage(PushMessage message) {
    _showNotification(message);
  }

  void receiveBackgroundMessage(PushMessage message) {
    _receiveMessage(message);
  }

  void _receiveMessage(PushMessage message) async {
    _handleCommonMessage(message);
  }

  Future<void> init() async {
    pushMessagingService.actions.listen((action) {
      action.when(
        onMessage: _receiveMessage,
        onTapToPushMessage: (PushMessage push) {

        },
        started: () {},
        stopped: () {},
        onChangingToken: (PushToken token) {

        },
      );
    }, onError: (dynamic error) {
      debugPrint(error);
    });
  }
}
