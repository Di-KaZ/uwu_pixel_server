import 'package:dart_frog/dart_frog.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uwu_pixel_server/db.dart';
import 'package:uwu_pixel_server/dto/initial_load.dart';
import 'package:uwu_pixel_server/models/pixel.dart';

Response onRequest(RequestContext context) {
  Isar.initialize('./libisar_linux_x64.so');
  final existingPixels = isar.pixels.where().findAll();
  final payload = InitialLoad(50, 70, existingPixels);

  return Response.json(body: payload);
}
