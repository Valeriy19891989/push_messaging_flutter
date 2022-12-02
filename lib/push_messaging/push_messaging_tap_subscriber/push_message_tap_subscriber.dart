import 'dart:async';

import 'package:push_messaging_flutter/local_notification_service/local_notification_service.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_tap_subscriber/push_message_tap_subscriber_contract.dart';



class PushMessageTapSubscriber extends PushMessageTapSubscriberContract {
  final LocalNotificationService localNotificationService;

  PushMessageTapSubscriber({
    required this.localNotificationService,
  });

  StreamSubscription<PushMessage>? _streamSubscription;

  void Function(dynamic error)? _onError;

  @override
  bool get isSubscribed => _streamSubscription != null;

  @override
  Future<void> subscribe(void Function(PushMessage push) onPushReceived, void Function(dynamic error)? onError) async {
    _onError = onError;

    _streamSubscription = localNotificationService.onSelectStream.listen(onPushReceived, onError: onError);
  }

  @override
  Future<void> unsubscribe() async {
    if (!isSubscribed) {
      return;
    }

    try {
      await _streamSubscription?.cancel();
      _streamSubscription = null;
    } catch (error) {
      _onError?.call("Ошибка отписки ${StackTrace.current}");
    }
  }

  Future<void> dispose() async {
    await unsubscribe();
  }
}
