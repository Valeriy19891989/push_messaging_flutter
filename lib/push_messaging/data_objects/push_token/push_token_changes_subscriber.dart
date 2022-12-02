import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token.dart';


class PushTokenChangesSubscriber {

  StreamSubscription<String>? _pushTokenStreamSubscription;
  StreamController<PushToken?>? _pushTokenStream;

  bool get isSubscribed => _pushTokenStreamSubscription != null;

  PushTokenChangesSubscriber();

  void _onNewTokenReceived(String? newToken) {
    final token = PushToken.create(value: newToken);
    if (token != null) {
      _pushTokenStream?.add(token);
    }
  }

  Future<void> subscribe(void Function(PushToken? token)? onData, void Function(dynamic error)? onError) async {
    if (isSubscribed) {
      return;
    }

    _pushTokenStream ??= StreamController<PushToken?>();

    _pushTokenStream?.stream.listen(onData, onError: onError);

    final newToken = await FirebaseMessaging.instance.getToken();
    _onNewTokenReceived(newToken);

    _pushTokenStreamSubscription = FirebaseMessaging.instance.onTokenRefresh.listen(_onNewTokenReceived, onError: (error) {
      _pushTokenStream?.addError(
        "$error",
        StackTrace.current,
      );
    });
  }

  Future<void> unsubscribe() async {
    if (!isSubscribed) {
      return;
    }

    try {
      await _pushTokenStreamSubscription?.cancel();
      _pushTokenStreamSubscription = null;
    } catch (error) {
      _pushTokenStream?.addError("$error", StackTrace.current);
    }

    try {
      _pushTokenStream?.add(null);
      _pushTokenStream?.close();
      _pushTokenStream = null;
    } catch (error) {
      _pushTokenStream?.addError("$error", StackTrace.current);
    }

    await FirebaseMessaging.instance.deleteToken();
  }
}
