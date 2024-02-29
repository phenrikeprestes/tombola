import 'package:flutter/material.dart';

class Home_ADM_Model{
  String id;
  String name;
  String? banner;
  String tombola;
  String cours;
  String participants;
  


Home_ADM_Model({

  required this.id,
  required this.name,
  required this.tombola,
  required this.cours,
  required this.participants,



});

Home_ADM_Model.fromMap(Map<String, dynamic> map) : id = map["id"], name = map["name"], tombola = map["tombola"],
cours = map["cours"],participants = map["participants"], banner = map["banner"];

Map<String, dynamic> toMap() {
  return{
    "id" : id,
    "name" : name,
    "tombola" : tombola,
    "cours" : cours,
    "participants" : participants,
   
    
  };
}
} 