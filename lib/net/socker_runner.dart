//
//import 'package:flutter_app/environment/environment.dart';
//import 'package:flutter_socket_io/flutter_socket_io.dart';
//import 'package:flutter_socket_io/socket_io_manager.dart';
//
//class SocketRunner {
//
//  static const _host = Environment.HOST_ADDRESS;
//  static const _port = Environment.HOST_PORT;
//  static const _socketUrl = Environment.SOCKET_URL;
//
//  static SocketIO _socket;
//
//
//  static Future connect() async {
//
//    print("Connecting to $_socketUrl");
//
//    _socket = SocketIOManager().createSocketIO("$_socketUrl", "/");
//    await _socket.init();
//    _socket.connect();
//    _socket.subscribe("message", _handleSocketData);
//
//    print("Connected to $_socketUrl");
//
////    WebSocket.connect(_socketUrl).;
////    _channel.stream.listen(_handleSocketData, onError: _handleError, onDone: _handleDone);
////    _establishedSocket.listen((data),
////        onError: _handleError, onDone: _handleDone);
////    _establishedSocket.write("Suka bleat'");
//    return;
//  }
//
//  static _handleSocketData(dynamic data) {
//    print(data);
//  }
//
//  static _handleError(dynamic error) {
//    print("[SocketRunner] socket error occured: $error");
//  }
//
//  static _handleDone() {
//    print("[SocketRunner] socket done");
//  }
//
//  static closeConnection() {
//    _socket.destroy();
////    _channel.stream.
////    _establishedSocket.destroy();
//  }
//}
