import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

typedef PushMessagingBackgroundEntryPoint = Future<void> Function(RemoteMessage message);

class FirebaseRemoteMessageSubscriber{

  final PushMessagingBackgroundEntryPoint _pushMessagingBackgroundEntryPoint;
  StreamSubscription<RemoteMessage>? _foregroundMessageStreamSubscription;
  bool isSubscribed = false;
  void Function(dynamic error)? _onError;

  FirebaseRemoteMessageSubscriber(
      {required BackgroundMessageHandler backgroundMessageEntryPoint})
      :_pushMessagingBackgroundEntryPoint = backgroundMessageEntryPoint;

  Future<void> subscribe(void Function(RemoteMessage remoteMessage) onData, void Function(dynamic error)? onError) async {
    if (isSubscribed) {
      return;
    }

    isSubscribed = true;
    _onError = onError;

    FirebaseMessaging.onBackgroundMessage(_pushMessagingBackgroundEntryPoint);

    _foregroundMessageStreamSubscription = FirebaseMessaging.onMessage.listen(onData, onError: onError);
  }

  Future<void> unsubscribe() async {
    if (!isSubscribed) {
      return;
    }

    try {
      await _foregroundMessageStreamSubscription?.cancel();
      FirebaseMessaging.onBackgroundMessage(_idleBackgroundMessageHandler);
      isSubscribed = false;
    } catch (error) {
      _onError?.call(error);
    }
  }

  Future<void> _idleBackgroundMessageHandler(RemoteMessage message) async {}
}
