import 'dart:io';

import 'package:try_app/userMessageRes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class URLS {

  static const String BASE_URL = 'https://chatbot.bolt.today:8443';
}
class ApiManager {
//  Future<UserMessageRes> conversationHistory(
//      Map<dynamic, dynamic> postData) async {
//    var url = '${URLS.BASE_URL}/LiveAgentSalesForce/getAllUserConversation';
//    final response = await http.post('$url',
//        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
//        body: json.encode(postData));
////code
////    UserMessageRes userConversationHistoryRes = UserMessageRes.fromJson(
////        json.decode(response.body[0]));
//    print(response.body);
//    UserMessageRes userConversationHistoryRes =UserMessageRes.fromJson(json.decode(response.body));
//
////    UserMessageRes userConversationHistoryRes = userConversationHistoryRes.map((i) => UserMessageRes.fromJSON(i)).toList();
//    return userConversationHistoryRes;
//  }


  Future<List<UserMessageRes>> fetchMessages() async {
var url = '${URLS.BASE_URL}/LiveAgentSalesForce/getAllUserConversation';
    Map<String,String> body={"Session_key": "kkwlf0237r4ip01zbbt5jguydei0wig4"};
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