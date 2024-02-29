
import 'package:flutter/material.dart';

class gameAdmModel{
  String id;
  Image team1;
  Image team2;
  String hour;
  String date;
  String game;
  

gameAdmModel({

  required this.id,
  required this.team1,
  required this.team2,
  required this.hour,
  required this.date,
  required this.game,

 
  

});

gameAdmModel.fromMap(Map<String, dynamic> map) : id = map["id"], game = map["game"], team1 = map["team1"],team2 = map["team2"], hour = map["hour"],date = map["date"] ;

Map<String, dynamic> toMap() {
  return{
    "id" : id,
    "game" : game,
    "team1" : team1,
    "team2" : team2,
    "hour" : hour,
    "date" : date,
  };
}
}