import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message_notifications.build.dart';

part 'push_message.build.g.dart';

@JsonSerializable()
class PushMessage  {
  final String? id;
  final DateTime? sentTime;
  final PushMessageNotification? notification;
  final String? type;

  const PushMessage({
    required this.id,
    required this.sentTime,
    required this.type,
    this.notification,
  });

  factory PushMessage.fromJson(Map<String, dynamic> json) => _$PushMessageFromJson(json);

  Map<String, dynamic> toJson() => _$PushMessageToJson(this);

}

extension PushMessageExtension on PushMessage {
  bool isNotificationExists() => notification != null;
}
