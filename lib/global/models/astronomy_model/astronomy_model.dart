import 'package:json_annotation/json_annotation.dart';

import 'astronomy.dart';
import 'location.dart';

part 'astronomy_model.g.dart';

@JsonSerializable()
class AstronomyModel {
  Location? location;
  Astronomy? astronomy;

  AstronomyModel({this.location, this.astronomy});

  factory AstronomyModel.fromJson(Map<String, dynamic> json) {
    return _$AstronomyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AstronomyModelToJson(this);
}
