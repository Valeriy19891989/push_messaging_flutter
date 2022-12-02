// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_message.build.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushMessage _$PushMessageFromJson(Map<String, dynamic> json) => PushMessage(
      id: json['id'] as String?,
      sentTime: json['sentTime'] == null
          ? null
          : DateTime.parse(json['sentTime'] as String),
      type: json['type'] as String?,
      notification: json['notification'] == null
          ? null
          : PushMessageNotification.fromJson(
              json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PushMessageToJson(PushMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sentTime': instance.sentTime?.toIso8601String(),
      'notification': instance.notification,
      'type': instance.type,
    };
