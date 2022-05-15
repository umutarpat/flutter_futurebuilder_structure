import 'package:json_annotation/json_annotation.dart';

part 'sport.g.dart';

@JsonSerializable()
class SportModel {
  String? stadium;
  String? country;
  String? region;
  String? tournament;
  String? start;
  String? match;

  SportModel({
    this.stadium,
    this.country,
    this.region,
    this.tournament,
    this.start,
    this.match,
  });

  factory SportModel.fromJson(Map<String, dynamic> json) =>
      _$SportModelFromJson(json);

  Map<String, dynamic> toJson() => _$SportModelToJson(this);
}
