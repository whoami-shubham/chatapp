import 'package:grpc/grpc.dart';
import './src/generated/protos/chat.pbgrpc.dart';
import './src/generated/protos/chat.pb.dart';

class Response {
  int status;
  String message;
  dynamic payload;
  Response() {
    status = 500;
    message = "Something went wrong";
  }
}

class API {
  ClientChannel _channel;
  ChatClient _stub;

  API(){
    init();
  }

  init() {
    _channel = ClientChannel('10.0.2.2',
        port: 7777,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    _stub = ChatClient(_channel);
  }

  join(String name) async {
    //init();
    Response res = Response();
    try {
      final response = await _stub.join(JoinRequest()..name = name);
      res.status = response.getField(1).status;
      res.message = response.getField(1).message;
    } catch (e) {
      print('join error: $e');
    } finally {
     // await _channel.shutdown();
      return res;
    }
  }

  login(String name) async {
    //init();
    Response res = Response();
    try {
      final response = await _stub.join(JoinRequest()..name = name);
      res.status = response.getField(1).status == 400 ? 200 : 400;
      res.message = res.status == 200 ? "sucess" : "user not found !";
    } catch (e) {
      print('login error: $e');
    } finally {
      return res;
    }
  }

  getusers() async {
    //init();
    Response res = Response();
    try {
      final response = await _stub.users(GetUser());
      res.status = 200;
      res.message = "sucess";
      res.payload = response.getField(1);
    } catch (e) {
      print('getuser error: $e');
    } finally {
     // await _channel.shutdown();
      return res;
    }
  }

  sendmessage(String from, String to, String message) async {
    //init();
    Response res = Response();
    try {
      final response = await _stub.send(SendRequest()
        ..from = from
        ..to = to
        ..message = message);
      res.status = response.getField(1).status;
      res.message = response.getField(1).message;
      res.payload = response.getField(2);
    } catch (e) {
      print('sendmessage error: $e');
    } finally {
      //await _channel.shutdown();
      return res;
    }
  }

  getmessages(String user) async {
   // init();
    Response res = Response();
    try {
      final response = await _stub.message(GetMessages()..user = user);
      res.status = response.getField(1).status;
      res.message = response.getField(1).message;
      res.payload = response.getField(2);
    } catch (e) {
      print('getmessage error: $e');
    } finally {
      //await _channel.shutdown();
      return res;
    }
  }
}
