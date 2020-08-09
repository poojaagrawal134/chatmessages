// To parse this JSON data, do
//
//     final userMessageReq = userMessageReqFromJson(jsonString);

import 'dart:convert';

UserMessageReq userMessageReqFromJson(String str) => UserMessageReq.fromJson(json.decode(str));

String userMessageReqToJson(UserMessageReq data) => json.encode(data.toJson());

class UserMessageReq {
  UserMessageReq({
    this.sessionKey,
  });

  String sessionKey;

  factory UserMessageReq.fromJson(Map<String, dynamic> json) => UserMessageReq(
    sessionKey: json["Session_key"],
  );

  Map<String, dynamic> toJson() => {
    "Session_key": sessionKey,
  };
}
