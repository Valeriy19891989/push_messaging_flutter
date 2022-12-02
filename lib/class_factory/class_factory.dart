
import 'package:push_messaging_flutter/local_notification_service/local_notification_service.dart';
import 'package:push_messaging_flutter/push_messaging/converters/push_messaging_remote_message_converter/firebase_remote_message_converter.dart';
import 'package:push_messaging_flutter/push_messaging/converters/push_messaging_remote_message_converter/firebase_remote_message_converter_contract.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token_changes_subscriber.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token_remote_controller.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_token/push_token_remote_controller_mock.dart';
import 'package:push_messaging_flutter/push_messaging/firebase_remote_message_subscriber/firebase_remote_message_subscriber.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_background/push_message_background_handler.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_background/push_messaging_background_entry_point.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_foreground_handler/push_messaging_foreground_handler.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_tap_subscriber/push_message_tap_subscriber.dart';
import 'package:push_messaging_flutter/push_messaging/push_messaging_tap_subscriber/push_message_tap_subscriber_contract.dart';

class PushMessagingFactory{

  static FirebaseRemoteMessageConverterContract firebaseRemoteMessageConverter(){
    return FirebaseRemoteMessageConverter();
  }

  static LocalNotificationService notificationService(){
    return LocalNotificationService();
  }

  static FirebaseRemoteMessageSubscriber firebaseRemoteMessageSubscriber() {
    return FirebaseRemoteMessageSubscriber(backgroundMessageEntryPoint: financePushMessagingBackgroundEntryPoint);
  }

  static PushTokenRemoteControllerContract pushTokenRemoteController() {
    return PushTokenRemoteControllerMock();
  }

  static PushTokenChangesSubscriber pushTokenChangesSubscriber() {
    return PushTokenChangesSubscriber();
  }

  static PushMessageTapSubscriberContract pushMessageTapSubscriber(){
    return PushMessageTapSubscriber(localNotificationService: notificationService());
  }

  static PushMessageBackgroundHandler pushMessageBackgroundHandler(){
    return PushMessageBackgroundHandler(
      convertor: firebaseRemoteMessageConverter(),
      defaultHandler: PushMessagingForegroundHandler.getInstance(),
    );
  }
}