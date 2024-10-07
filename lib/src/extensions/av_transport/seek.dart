// ignore_for_file: non_constant_identifier_names

part of 'extension.dart';

/// The Next action input
final class SeekInput {
  /// The input argument InstanceID
  final String InstanceID;
  final String Unit;
  final String Target;

  const SeekInput(
    this.Unit,
    this.Target,
    {this.InstanceID = _defaultInstanceID});

  /// The static method toMap
  static Map<String, String> toMap(SeekInput input) {
    return {'InstanceID': input.InstanceID, 'Unit': input.Unit, 'Target': input.Target};
  }
}

/// The Next action output
final class SeekOutput {

  const SeekOutput(
  );

  /// The factory method fromMap
  factory SeekOutput.fromMap(Map<String, String> m) {
    return SeekOutput();
  }
}
