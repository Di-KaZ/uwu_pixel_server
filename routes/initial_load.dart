import 'package:dart_frog/dart_frog.dart';
import 'package:isar/isar.dart';
import 'package:uwu_pixel_server/db.dart';
import 'package:uwu_pixel_server/dto/initial_load.dart';
import 'package:uwu_pixel_server/models/pixel.dart';

/// Send all existing game data and size
Response onRequest(RequestContext context) {
  // isar should be injected in middleware but got no time 🚄
  Isar.initialize('./libisar_linux_x64.so');
  // WARN: WINDOWS USER -> uncomment the following line and comment the top one 🦶 💢 🪟
  // Isar.initialize('./isar_windows_x64.dll');

  final existingPixels = isar.pixels.where().findAll();
  final payload = InitialLoad(100, 100, existingPixels);

  return Response.json(body: payload);
}
