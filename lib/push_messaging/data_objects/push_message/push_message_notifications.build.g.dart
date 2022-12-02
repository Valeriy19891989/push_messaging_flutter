// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_message_notifications.build.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushMessageNotification _$PushMessageNotificationFromJson(
        Map<String, dynamic> json) =>
    PushMessageNotification(
      title: json['title'] as String?,
      message: json['message'] as String?,
      deeplink: json['deeplink'] == null
          ? null
          : Uri.parse(json['deeplink'] as String),
    );

Map<String, dynamic> _$PushMessageNotificationToJson(
        PushMessageNotification instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'deeplink': instance.deeplink?.toString(),
    };
