import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_messaging_flutter/class_factory/class_factory.dart';


@pragma('vm:entry-point')
Future<void> financePushMessagingBackgroundEntryPoint(RemoteMessage message) async {

  await Firebase.initializeApp();

  final backgroundHandler = PushMessagingFactory.pushMessageBackgroundHandler();

  backgroundHandler.processRemotePush(message);

}
