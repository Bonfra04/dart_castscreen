// ignore_for_file: non_constant_identifier_names

part of 'extension.dart';

/// The Next action input
final class TransportInfoInput {
  /// The input argument InstanceID
  final String InstanceID;

  const TransportInfoInput({this.InstanceID = _defaultInstanceID});

  /// The static method toMap
  static Map<String, String> toMap(TransportInfoInput input) {
    return {'InstanceID': input.InstanceID};
  }
}

/// The Next action output
final class TransportInfoOutput {
  final String CurrentTransportState;
  final String CurrentTransportStatus;
  final String CurrentSpeed;

  const TransportInfoOutput(
    this.CurrentTransportState,
    this.CurrentTransportStatus,
    this.CurrentSpeed,
  );

  /// The factory method fromMap
  factory TransportInfoOutput.fromMap(Map<String, String> m) {
    return TransportInfoOutput(
      m['CurrentTransportState'] ?? 'STOPPED',
      m['CurrentTransportStatus'] ?? 'OK',
      m['CurrentSpeed'] ?? '1',
    );
  }
}
