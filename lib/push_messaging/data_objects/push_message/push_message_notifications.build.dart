
import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_message_notifications.build.g.dart';

@JsonSerializable()
class PushMessageNotification {
  final String? title;
  final String? message;
  final Uri? deeplink;
  const PushMessageNotification({this.title, this.message, this.deeplink});

  factory PushMessageNotification.fromJson(Map<String, dynamic> json) => _$PushMessageNotificationFromJson(json);

  Map<String, dynamic> toJson() => _$PushMessageNotificationToJson(this);
}
