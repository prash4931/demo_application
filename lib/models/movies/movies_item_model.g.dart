// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesItemModel _$MoviesItemModelFromJson(Map<String, dynamic> json) =>
    MoviesItemModel(
      title: json['title'] as String?,
      year: json['year'] as int?,
      cast: (json['cast'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$MoviesItemModelToJson(MoviesItemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'cast': instance.cast,
      'genres': instance.genres,
    };
