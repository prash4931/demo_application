import 'package:json_annotation/json_annotation.dart';

import 'movies_item_model.dart';

part 'movies_response_model.g.dart';

@JsonSerializable()
class MoviesResponseModel {
  final List<MoviesItemModel?>? movies;

  MoviesResponseModel({this.movies});

  factory MoviesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesResponseModelToJson(this);
}
