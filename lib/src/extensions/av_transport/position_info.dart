// ignore_for_file: non_constant_identifier_names

part of 'extension.dart';

/// The Next action input
final class PositionInfoInput {
  /// The input argument InstanceID
  final String InstanceID;

  const PositionInfoInput({this.InstanceID = _defaultInstanceID});

  /// The static method toMap
  static Map<String, String> toMap(PositionInfoInput input) {
    return {'InstanceID': input.InstanceID};
  }
}

/// The Next action output
final class PositionInfoOutput {
  final String Track;
  final String TrackDuration;
  final String TrackMetaData;
  final String TrackURI;
  final String RelTime;
  final String AbsTime;
  final String RelCount;
  final String AbsCount;

  const PositionInfoOutput(
    this.Track,
    this.TrackDuration,
    this.TrackMetaData,
    this.TrackURI,
    this.RelTime,
    this.AbsTime,
    this.RelCount,
    this.AbsCount,
  );

  /// The factory method fromMap
  factory PositionInfoOutput.fromMap(Map<String, String> m) {
    return PositionInfoOutput(
        m['Track']!,
        m['TrackDuration']!,
        m['TrackMetaData']!,
        m['TrackURI']!,
        m['RelTime']!,
        m['AbsTime']!,
        m['RelCount']!,
        m['AbsCount']!,
    );
  }
}
