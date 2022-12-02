import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:push_messaging_flutter/class_factory/class_factory.dart';
import 'package:push_messaging_flutter/push_messaging/converters/push_messaging_remote_message_converter/firebase_remote_message_converter_contract.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token_changes_subscriber.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token_remote_controller.dart';
import 'package:push_messaging_flutter/push_messaging/firebase_remote_message_subscriber/firebase_remote_message_subscriber.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_tap_subscriber/push_message_tap_subscriber_contract.dart';

part 'push_messaging_service.build.freezed.dart';

part 'push_messaging_service_action.dart';

class PushMessagingService {
  static PushMessagingService? _instance;

  PushMessagingService._(
    this._messageConverter,
    this._pushTokenRemoteController,
    this._remoteMessageSubscriber,
    this._pushTokenSubscriber,
    this._pushMessageTapSubscriber,
  );

  static PushMessagingService getInstance() {
    return _instance ??= PushMessagingService(
      converter: PushMessagingFactory.firebaseRemoteMessageConverter(),
      remoteMessageSubscriber:
          PushMessagingFactory.firebaseRemoteMessageSubscriber(),
      pushTokenRemoteController:
          PushMessagingFactory.pushTokenRemoteController(),
      pushTokenSubscriber: PushMessagingFactory.pushTokenChangesSubscriber(),
      pushMessageTapSubscriber: PushMessagingFactory.pushMessageTapSubscriber(),
    );
  }

  bool _isStarted = false;

  bool get isStarted => _isStarted;

  Stream<PushMessagingServiceAction> get actions =>
      _actionsStreamController.stream;

  final FirebaseRemoteMessageConverterContract _messageConverter;
  final PushTokenRemoteControllerContract _pushTokenRemoteController;
  final FirebaseRemoteMessageSubscriber _remoteMessageSubscriber;
  final PushTokenChangesSubscriber _pushTokenSubscriber;
  final PushMessageTapSubscriberContract _pushMessageTapSubscriber;

  final StreamController<PushMessagingServiceAction> _actionsStreamController =
      StreamController<PushMessagingServiceAction>.broadcast();

  PushMessagingService({
    required FirebaseRemoteMessageConverterContract converter,
    required FirebaseRemoteMessageSubscriber remoteMessageSubscriber,
    required PushTokenRemoteControllerContract pushTokenRemoteController,
    required PushTokenChangesSubscriber pushTokenSubscriber,
    required PushMessageTapSubscriberContract pushMessageTapSubscriber,
  })  : _messageConverter = converter,
        _remoteMessageSubscriber = remoteMessageSubscriber,
        _pushTokenRemoteController = pushTokenRemoteController,
        _pushTokenSubscriber = pushTokenSubscriber,
        _pushMessageTapSubscriber = pushMessageTapSubscriber,
        super();

  Future<void> start() async {
    if (_isStarted) {
      return;
    }

    await _pushTokenSubscriber.subscribe((token) {
      if (token != null) {
        _pushTokenRemoteController.sendPushTokenToServer(token: token);
        _actionsStreamController.add(PushMessagingServiceAction.onChangingToken(token: token));
      }
    }, (error) {
      // _crashReportService.reportNonFatal(exception: error, stackTrace: StackTrace.current);
    });

    await _remoteMessageSubscriber.subscribe(_onRemoteMessageHandler, (error) {
      // _crashReportService.reportNonFatal(exception: error, stackTrace: StackTrace.current);
    });

    _pushMessageTapSubscriber.subscribe(_onRemoteMessageTappedHandler, (error) {
      // _crashReportService.reportNonFatal(exception: error, stackTrace: StackTrace.current);
    });

    _actionsStreamController.add(PushMessagingServiceAction.started());
    _isStarted = true;
  }

  Future<void> stop() async {
    if (!_isStarted) {
      return;
    }

    await _pushTokenSubscriber.unsubscribe();
    await _remoteMessageSubscriber.unsubscribe();
    await _pushMessageTapSubscriber.unsubscribe();
    _pushTokenRemoteController.removePushTokenFromServer();

    _actionsStreamController.add(const PushMessagingServiceAction.stopped());
    _isStarted = false;
  }

  PushMessage _convertToPushMessage(RemoteMessage message) {
    final pushMessage = _messageConverter.toPushMessage(message);
    return pushMessage;
  }

  void _onRemoteMessageHandler(RemoteMessage message) {
    final convertedMessage = _convertToPushMessage(message);
    _actionsStreamController
        .add(PushMessagingServiceAction.onMessage(message: convertedMessage));
  }

  void _onRemoteMessageTappedHandler(PushMessage push) {
    _actionsStreamController
        .add(PushMessagingServiceAction.onTapToPushMessage(push: push));
  }
}
