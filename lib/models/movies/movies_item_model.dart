import 'package:json_annotation/json_annotation.dart';

part 'movies_item_model.g.dart';

@JsonSerializable()
class MoviesItemModel {
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'year')
  final int? year;
  @JsonKey(name: 'cast')
  final List<String?>? cast;
  @JsonKey(name: 'genres')
  final List<String?>? genres;

  MoviesItemModel({this.title, this.year, this.cast, this.genres});

  factory MoviesItemModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesItemModelToJson(this);
}

// {"title":"After Dark in Central Park","year":1900,"cast":[],"genres":[]}
  // "cast":["Marion Leonard"]
  // genres":["Short","Drama"]