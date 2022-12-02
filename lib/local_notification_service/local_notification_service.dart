import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:push_messaging_flutter/push_messaging/converters/push_message_json_converter/push_message_json_converter_contract.dart';
import 'package:push_messaging_flutter/push_messaging/converters/push_message_json_converter/push_message_json_conveter.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';

class LocalNotificationService {
  static int _transactionIdCounter = 0;
  final _plugin = FlutterLocalNotificationsPlugin();

  late final PushMessageJsonConverterContract _pushMessageJsonConverter;

  final StreamController<PushMessage> _onSelectionStreamController =
      StreamController<PushMessage>.broadcast();

  Stream<PushMessage> get onSelectStream => _onSelectionStreamController.stream;

  LocalNotificationService(
      {PushMessageJsonConverterContract? pushMessageJsonConverter}) {
    if (pushMessageJsonConverter == null) {
      _pushMessageJsonConverter = PushMessageJsonConverter();
    } else {
      _pushMessageJsonConverter = pushMessageJsonConverter;
    }
  }


  Future<void> init() async {
    const initAndroid = AndroidInitializationSettings('ic_stat_name');
    const initIOS = IOSInitializationSettings();
    const settings = InitializationSettings(android: initAndroid, iOS: initIOS);

    await _plugin.initialize(
      settings,
      onSelectNotification: (String? payload) async {
        _handleNotificationTap(payload);
      },
    );

    final appLaunchNotification =
        await _plugin.getNotificationAppLaunchDetails();
    if (appLaunchNotification != null) {
      _handleNotificationTap(appLaunchNotification.payload);
    }
  }

  void _handleNotificationTap(String? payload) {
    if (payload == null) {
      return;
    }

    final push = _pushMessageJsonConverter.fromJson(payload);

    debugPrint("Тапнутый пуш после конвертации из json: ${jsonEncode(push)}");

    if (push != null) {
      _onSelectionStreamController.add(push);
    }
  }

  int _createNewId() {
    return _transactionIdCounter += 1;
  }

  Future<int> showNotification(
      {String? title, String? body, String? payload, String? icon}) async {
    int notificationId = _createNewId();

    await _show(notificationId, title, body, payload, icon);

    return notificationId;
  }

  Future<void> hideNotification(int notificationId) async {
    await _plugin.cancel(notificationId);
  }

  Future<void> hideAllNotifications() async {
    await _plugin.cancelAll();
  }

  Future<void> _show(int notificationId, String? title, String? body,
      String? payload, String? icon) async {

    final androidChannel = AndroidNotificationDetails(
      'android_channel',
      'AndroidChannel',
      channelDescription: 'Android channel',
      importance: Importance.max,
      priority: Priority.max,
      icon: icon,
    );

    final iosChannel = IOSNotificationDetails(threadIdentifier: "iosChannel");

    await _plugin.show(
        notificationId,
        title,
        body,
        NotificationDetails(
          android: androidChannel,
          iOS: iosChannel,
        ),
        payload: payload);
  }
}
