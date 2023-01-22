// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesResponseModel _$MoviesResponseModelFromJson(Map<String, dynamic> json) =>
    MoviesResponseModel(
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : MoviesItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoviesResponseModelToJson(
        MoviesResponseModel instance) =>
    <String, dynamic>{
      'movies': instance.movies,
    };
