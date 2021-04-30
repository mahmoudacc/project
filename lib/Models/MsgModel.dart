
import 'dart:convert';

class MsgModel{
  String id;
  String msg;
  int time;

  MsgModel({this.id,
  this.msg,
  this.time,
  });

  MsgModel.fromMap(Map<String,dynamic> map){
    id=map['id'];
    msg=map['msg'];
    time=map['time'];
  }

  Map<String,dynamic> toMap(){
    return {
      'id':id,
      'msg':msg,
      'time':time,
    };
  }

  String toJson(){
    return jsonEncode(toMap());
  }
}