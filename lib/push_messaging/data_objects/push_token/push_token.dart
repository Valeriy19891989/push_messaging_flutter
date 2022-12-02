class PushToken {
  final String _value;

  PushToken._({required String value}) : _value = value;

  static PushToken? create({required String? value}) {
    if (value != null) {
      return PushToken._(value: value);
    } else {
      return null;
    }
  }

  @override
  String toString() => _value;
}
