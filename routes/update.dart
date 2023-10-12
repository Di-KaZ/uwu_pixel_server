// routes/ws.dart
import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:uwu_pixel_server/db.dart';
import 'package:uwu_pixel_server/models/pixel.dart';

/// all clients connected to the server
List<WebSocketChannel> clients = [];

Handler get onRequest {
  return webSocketHandler(
    (channel, protocol) {
      clients.add(channel);
      print('client ${channel.hashCode} connect');
      channel.stream.listen(
        cancelOnError: true,
        _handlePixelPlacement,
        onDone: () {
          print('client ${channel.hashCode} disconnect');
          clients.removeWhere(
            (cli) => cli.hashCode == channel.hashCode,
          );
        },
      );
    },
  );
}

void _handlePixelPlacement(dynamic message) {
  if (message is! String) return;

  final pixelData = jsonDecode(message) as Map;

  /// create an unique id from x + y
  pixelData['id'] = pixelData['x'] + pixelData['y'];

  final pixel = Pixel.fromJson(
    Map<String, dynamic>.from(pixelData),
  );

  // save it to db
  isar.write((isar) => isar.pixels.put(pixel));

  /// loop over all connected client and send the new [Pixel]
  for (final client in clients) {
    client.sink.add(message);
  }
}
