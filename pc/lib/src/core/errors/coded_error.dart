/// Stable machine-readable error exposed across feature and process boundaries.
///
/// UI code displays [message] and [details] so failures remain diagnosable.
/// [code] is retained for programmatic handling and localized fallbacks when
/// the backend does not provide a message.
abstract interface class CodedError implements Exception {
  String get code;
  String get message;
  Object? get details;
}
