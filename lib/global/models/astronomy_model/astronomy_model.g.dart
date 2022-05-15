// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astronomy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AstronomyModel _$AstronomyModelFromJson(Map<String, dynamic> json) =>
    AstronomyModel(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      astronomy: json['astronomy'] == null
          ? null
          : Astronomy.fromJson(json['astronomy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AstronomyModelToJson(AstronomyModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'astronomy': instance.astronomy,
    };
