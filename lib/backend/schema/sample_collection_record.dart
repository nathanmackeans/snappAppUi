import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sample_collection_record.g.dart';

abstract class SampleCollectionRecord
    implements Built<SampleCollectionRecord, SampleCollectionRecordBuilder> {
  static Serializer<SampleCollectionRecord> get serializer =>
      _$sampleCollectionRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'sample_field')
  int get sampleField;

  @nullable
  @BuiltValueField(wireName: 'another_sampl_field')
  bool get anotherSamplField;

  @nullable
  @BuiltValueField(wireName: 'ohn0_field')
  String get ohn0Field;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SampleCollectionRecordBuilder builder) =>
      builder
        ..sampleField = 0
        ..anotherSamplField = false
        ..ohn0Field = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sample_collection');

  static Stream<SampleCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SampleCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  SampleCollectionRecord._();
  factory SampleCollectionRecord(
          [void Function(SampleCollectionRecordBuilder) updates]) =
      _$SampleCollectionRecord;

  static SampleCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSampleCollectionRecordData({
  int sampleField,
  bool anotherSamplField,
  String ohn0Field,
}) =>
    serializers.toFirestore(
        SampleCollectionRecord.serializer,
        SampleCollectionRecord((s) => s
          ..sampleField = sampleField
          ..anotherSamplField = anotherSamplField
          ..ohn0Field = ohn0Field));
