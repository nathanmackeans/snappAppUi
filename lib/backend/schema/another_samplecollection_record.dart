import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'another_samplecollection_record.g.dart';

abstract class AnotherSamplecollectionRecord
    implements
        Built<AnotherSamplecollectionRecord,
            AnotherSamplecollectionRecordBuilder> {
  static Serializer<AnotherSamplecollectionRecord> get serializer =>
      _$anotherSamplecollectionRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'sample_field2')
  String get sampleField2;

  @nullable
  @BuiltValueField(wireName: 'sample_field3')
  LatLng get sampleField3;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(
          AnotherSamplecollectionRecordBuilder builder) =>
      builder..sampleField2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('another_samplecollection');

  static Stream<AnotherSamplecollectionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AnotherSamplecollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnotherSamplecollectionRecord._();
  factory AnotherSamplecollectionRecord(
          [void Function(AnotherSamplecollectionRecordBuilder) updates]) =
      _$AnotherSamplecollectionRecord;

  static AnotherSamplecollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnotherSamplecollectionRecordData({
  String sampleField2,
  LatLng sampleField3,
}) =>
    serializers.toFirestore(
        AnotherSamplecollectionRecord.serializer,
        AnotherSamplecollectionRecord((a) => a
          ..sampleField2 = sampleField2
          ..sampleField3 = sampleField3));
