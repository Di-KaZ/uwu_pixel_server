// routes/ws.dart
import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import 'package:uwu_pixel_server/db.dart';
import 'package:uwu_pixel_server/models/pixel.dart';

List<WebSocketChannel> clients = [];

Handler get onRequest {
  return webSocketHandler(
    (channel, protocol) {
      clients.add(channel);
      print('client ${channel.hashCode} connect');
      channel.stream.listen(
        (message) {
          // Handle incoming messages.
          if (message is! String) return;
          final pixelData = jsonDecode(message) as Map;
          pixelData["id"] = pixelData["x"] + pixelData["y"];
          final pixel = Pixel.fromJson(
            Map<String, dynamic>.from(pixelData),
          );

          isar.write((isar) => isar.pixels.put(pixel));

          for (final client in clients) {
            client.sink.add(message);
          }
        },
        onDone: () {
          print('client ${channel.hashCode} disconnect');
          clients
              .removeWhere((element) => element.hashCode == channel.hashCode);
        },
      );
    },
  );
}
