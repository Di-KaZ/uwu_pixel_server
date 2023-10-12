import 'package:isar/isar.dart';
import 'package:uwu_pixel_server/models/pixel.dart';

const dir = './';

final isar = Isar.open(
  schemas: [PixelSchema],
  directory: dir,
);
