import 'dart:convert';

class UserModel{
  String id;
  String name;
  String email;
  String avatar;

  UserModel({this.id,
  this.name,
  this.email,
  this.avatar});

  UserModel.fromMap(Map<String,dynamic> map){
    id=map['id'];
    name=map['name'];
    email=map['email'];
    avatar=map['avatar'];
  }

  Map<String,dynamic> toMap(){
    return {
      'id':id,
      'name':name,
      'email':email,
      'avatar':avatar
    };
  }

  String toJson(){
    return jsonEncode(toMap());
  }
}