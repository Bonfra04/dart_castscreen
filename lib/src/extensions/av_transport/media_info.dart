// ignore_for_file: non_constant_identifier_names

part of 'extension.dart';

/// The Next action input
final class MediaInfoInput {
  /// The input argument InstanceID
  final String InstanceID;

  const MediaInfoInput({this.InstanceID = _defaultInstanceID});

  /// The static method toMap
  static Map<String, String> toMap(MediaInfoInput input) {
    return {'InstanceID': input.InstanceID};
  }
}

/// The Next action output
final class MediaInfoOutput {
  final String NrTracks;
  final String MediaDuration;
  final String CurrentURI;
  final String CurrentURIMetaData;
  final String NextURI;
  final String NextURIMetaData;
  final String PlayMedium;
  final String RecordMedium;
  final String WriteStatus;

  const MediaInfoOutput(this.NrTracks, this.MediaDuration, this.CurrentURI,
      this.CurrentURIMetaData, this.NextURI, this.NextURIMetaData, this.PlayMedium, this.RecordMedium, this.WriteStatus);

  /// The factory method fromMap
  factory MediaInfoOutput.fromMap(Map<String, String> m) {
    return MediaInfoOutput(
      m['NrTracks'] ?? '0',
      m['MediaDuration'] ?? '0',
      m['CurrentURI'] ?? '',
      m['CurrentURIMetaData'] ?? '',
      m['NextURI'] ?? '',
      m['NextURIMetaData'] ?? '',
      m['PlayMedium'] ?? 'NONE',
      m['RecordMedium'] ?? 'NOT_IMPLEMENTED',
      m['WriteStatus'] ?? 'NOT_IMPLEMENTED',
    );
  }
}
