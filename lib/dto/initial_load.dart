import 'package:json_annotation/json_annotation.dart';
import 'package:uwu_pixel_server/models/pixel.dart';

part 'initial_load.g.dart';

@JsonSerializable()
class InitialLoad {
  const InitialLoad(this.width, this.height, this.pixels);

  final int width;
  final int height;
  final List<Pixel> pixels;

  factory InitialLoad.fromJson(Map<String, dynamic> json) =>
      _$InitialLoadFromJson(json);

  Map<String, dynamic> toJson() => _$InitialLoadToJson(this);
}
