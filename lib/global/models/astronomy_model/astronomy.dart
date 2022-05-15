import 'package:json_annotation/json_annotation.dart';

import 'astro.dart';

part 'astronomy.g.dart';

@JsonSerializable()
class Astronomy {
  Astro? astro;

  Astronomy({this.astro});

  factory Astronomy.fromJson(Map<String, dynamic> json) {
    return _$AstronomyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AstronomyToJson(this);
}
