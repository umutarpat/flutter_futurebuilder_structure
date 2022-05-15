// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sports_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SportsModel _$SportsModelFromJson(Map<String, dynamic> json) => SportsModel(
      football: (json['football'] as List<dynamic>?)
          ?.map((e) => SportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cricket: (json['cricket'] as List<dynamic>?)
          ?.map((e) => SportModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SportsModelToJson(SportsModel instance) =>
    <String, dynamic>{
      'football': instance.football,
      'cricket': instance.cricket,
    };
