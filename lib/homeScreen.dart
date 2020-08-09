import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:try_app/api_manager.dart';
import 'package:try_app/userMessageReq.dart';
import 'package:try_app/userMessageRes.dart';
import 'dart:io';

import 'package:try_app/userMessageRes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState  createState() => _HomeState();
}

class _HomeState extends State<Home> {

  UserMessageReq userReq = new UserMessageReq();
  ApiManager apiManager=ApiManager();
  Future<List<UserMessageRes>> apiResponse;
  @override
   void initState()
   {
     super.initState();
     userReq.sessionKey="kkwlf0237r4ip01zbbt5jguydei0wig4";
////    apiResponse=ApiManager().conversationHistory(userReq.toJson());
////   apiResponse.then((value) =>
////   print(value.userUttarance))
//;


   apiResponse=apiManager.fetchMessages();
   print(apiResponse);
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
//      appBar: new AppBar(
//        title: new Text("chat"),
//        centerTitle: true,
//        backgroundColor: Colors.blue[700],
//      ),
//      body: new Container(
//        child: new ListView(
//          children: <Widget>[
//            new FutureBuilder<List<UserMessageRes>>(
//              future: apiResponse,
//              builder: (context, snapshot) {
//                if (snapshot.hasData) {
//                  List<UserMessageRes> posts = snapshot.data;
//                  return new Column(
//                      children: posts.map((post) =>
//                      new Column(
//                        children: <Widget>[
//                          new Text(post.userUttarance),
//                        ],
//                      )).toList()
//                  );
//                }
//                else if (snapshot.hasError) {
//                  return snapshot.error;
//                }
//                return new Center(
//                  child: new Column(
//                    children: <Widget>[
//                      new Padding(padding: new EdgeInsets.all(50.0)),
//                      new CircularProgressIndicator(),
//                    ],
//                  ),
//                );
//              },
//            ),
//
//          ],
//        ),
//      ),
    );
  }
}