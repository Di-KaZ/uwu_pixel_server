// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_load.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitialLoad _$InitialLoadFromJson(Map<String, dynamic> json) => InitialLoad(
      json['width'] as int,
      json['height'] as int,
      (json['pixels'] as List<dynamic>)
          .map((e) => Pixel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InitialLoadToJson(InitialLoad instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'pixels': instance.pixels,
    };
