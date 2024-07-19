import 'package:core/core.dart';
import 'package:domain/models/user/user_model.dart';

class ApiProvider {
  Future<Map<String, dynamic>> getUsersOnTable() async {
    return <String, dynamic>{
      '0': <String, dynamic>{'id' : '1', 'firstName' : 'Ivan', 'secondName' : 'Ivanov', 'age' : 20, 'heartsAmount' : 0},
      '1': <String, dynamic>{'id' : '2', 'firstName' : 'Denis', 'secondName' : 'Maliush', 'age' : 19},
      '2': <String, dynamic>{'id' : '3', 'firstName' : 'Vlad', 'secondName' : 'Stepanau', 'age' : 19},
      '3': <String, dynamic>{'id' : '4', 'firstName' : 'Yagor', 'secondName' : 'Trukhan', 'age' : 19},
      '4': <String, dynamic>{'id' : '5', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18, 'gender' : 'F',},
      '5': <String, dynamic>{'id' : '6', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18, 'gender' : 'F',},
      '6': <String, dynamic>{'id' : '7', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18, 'gender' : 'F',},
      '7': <String, dynamic>{'id' : '8', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18, 'gender' : 'F',},
      '8': <String, dynamic>{'id' : '9', 'firstName' : 'Viktoria', 'secondName' : 'Malbert', 'age' : 18, 'gender' : 'F',},
      '9': null,
      '10': null,
      '11': null,
    };
  }

  Future<void> saveTableChanges() async {}

  Future<String> getTableIdByUserData(UserModel user) async {
    final Dio dio = Dio();

    final Response<String> response = await dio.get('', queryParameters: user.toJson());
    final String tableId = response.data.toString();

    return tableId;
  }

  Future<WebSocketChannel> webSocketConnect(String url) async {
    final Uri uri = Uri.parse(url);
    final WebSocketChannel chanel = WebSocketChannel.connect(uri);

    return chanel;
  }

  void webSocketDisconnect(WebSocketChannel chanel) {
    chanel.sink.close();
  }
}
