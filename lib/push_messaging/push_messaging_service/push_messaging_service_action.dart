part of 'push_messaging_service.build.dart';

@freezed
class PushMessagingServiceAction with _$PushMessagingServiceAction {
  const factory PushMessagingServiceAction.onMessage({required PushMessage message}) = PushMessagingServiceActionOnMessage;
  const factory PushMessagingServiceAction.onTapToPushMessage({required PushMessage push}) = PushMessagingServiceActionOnTapToPushMessage;
  const factory PushMessagingServiceAction.started() = PushMessagingServiceActionStarted;
  const factory PushMessagingServiceAction.stopped() = PushMessagingServiceActionStopped;
  const factory PushMessagingServiceAction.onChangingToken({required PushToken token}) = PushMessagingServiceActionOnChangingToken;
}
