import 'dart:convert';
import 'dart:io';

main(List<String> args) async {
  final server = await HttpServer.bind('0.0.0.0', 9898);
  await for (var req in server) {
    req.response.add(utf8.encode(
        '<html><body style="background-color: white">Testing...</body></html>'));
    req.response.close();
  }
  print("Testing...");
}
