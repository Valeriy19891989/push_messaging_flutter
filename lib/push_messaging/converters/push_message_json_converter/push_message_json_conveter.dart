import 'dart:convert';

import 'package:push_messaging_flutter/push_messaging/converters/push_message_json_converter/push_message_json_converter_contract.dart';
import 'package:push_messaging_flutter/push_messaging/data_objects/push_message/push_message.build.dart';


class PushMessageJsonConverter extends PushMessageJsonConverterContract {
  static const _typePushMessage = "push_message";

  @override
  String toJson(PushMessage message) {
    Map<String, dynamic> map = message.toJson();
    map["type"] = _typePushMessage;
    return jsonEncode(map);
  }

  @override
  PushMessage? fromJson(String jsonStr) {
    final map = jsonDecode(jsonStr);
    return PushMessage.fromJson(map);
  }
}
