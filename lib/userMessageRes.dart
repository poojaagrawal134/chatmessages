// To parse this JSON data, do
//
//     final userMessageRes = userMessageResFromJson(jsonString);

import 'dart:convert';

List<UserMessageRes> userMessageResFromJson(String str) =>
    List<UserMessageRes>.from(json.decode(str).map((x) => UserMessageRes.fromJson(x)));

String userMessageResToJson(List<UserMessageRes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserMessageRes {
  UserMessageRes({
    this.userUttarance,
    this.botResponce,
    this.username,
    this.userId,
    this.sessionKey,
    this.agentRequest,
    this.userRequest,
  });

  String userUttarance;
  List<BotResponce> botResponce;
  dynamic username;
  dynamic userId;
  dynamic sessionKey;
  dynamic agentRequest;
  dynamic userRequest;

  factory UserMessageRes.fromJson(Map<String, dynamic> json) => UserMessageRes(

    userUttarance: json["user_uttarance"],
    botResponce: List<BotResponce>.from(json["bot_responce"].map((x) => BotResponce.fromJson(x))),
    username: json["username"],
    userId: json["user_id"],
    sessionKey: json["sessionKey"],
    agentRequest: json["agent_Request"],
    userRequest: json["user_Request"],
  );

  Map<String, dynamic> toJson() => {
    "user_uttarance": userUttarance,
    "bot_responce": List<dynamic>.from(botResponce.map((x) => x.toJson())),
    "username": username,
    "user_id": userId,
    "sessionKey": sessionKey,
    "agent_Request": agentRequest,
    "user_Request": userRequest,
  };
}

class BotResponce {
  BotResponce({
    this.sequence,
    this.type,
    this.value,
  });

  String sequence;
  String type;
  String value;

  factory BotResponce.fromJson(Map<String, dynamic> json) => BotResponce(
    sequence: json["sequence"],
    type: json["type"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "sequence": sequence,
    "type": type,
    "value": value,
  };
}
