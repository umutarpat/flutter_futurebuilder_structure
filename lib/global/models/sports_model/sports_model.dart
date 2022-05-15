import 'package:flutter_futurebuilder_structure/global/models/sports_model/sport.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sports_model.g.dart';

@JsonSerializable()
class SportsModel {
  List<SportModel>? football;
  List<SportModel>? cricket;

  SportsModel({this.football, this.cricket});

  factory SportsModel.fromJson(Map<String, dynamic> json) {
    return _$SportsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SportsModelToJson(this);
}
