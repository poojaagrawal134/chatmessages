import 'dart:io';

import 'package:try_app/userMessageRes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class URLS {

  static const String BASE_URL = '';
}
class ApiManager {



  Future<List<UserMessageRes>> fetchMessages() async {
var url = '${URLS.BASE_URL}';
    Map<String,String> body=" ;
    http.Response response = await http.post(
      '$url',
      headers: {
        "Content-type": "application/json",
      },
      body: json.encode(body),
    );
     var responseJson = json.decode(response.body);
    print(responseJson);
    return (responseJson as List)
        .map((p) { 
          print(p);
          UserMessageRes.fromJson(p);})
        .toList();
  }

}
