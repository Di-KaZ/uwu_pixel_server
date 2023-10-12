import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pixel.g.dart';

@collection
@JsonSerializable()
class Pixel {
  const Pixel(this.id, this.x, this.y, this.color);

  @Id()
  final int id;

  final int x;
  final int y;
  final String color;

  factory Pixel.fromJson(Map<String, dynamic> json) => _$PixelFromJson(json);

  Map<String, dynamic> toJson() => _$PixelToJson(this);
}
