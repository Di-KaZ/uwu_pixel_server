import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pixel.g.dart';

/// Represent a pixel in the database
@collection
@JsonSerializable()
class Pixel {
  /// Create a pixel
  const Pixel(this.id, this.x, this.y, this.color);

  /// id of the pixel sum of [x] + [y]
  @Id()
  final int id;

  /// x coordinate of the pixel
  final int x;

  /// y coordinate of the pixel
  final int y;

  /// hexa color of the pixel
  final String color;

  factory Pixel.fromJson(Map<String, dynamic> json) => _$PixelFromJson(json);

  Map<String, dynamic> toJson() => _$PixelToJson(this);
}
