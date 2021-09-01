 
import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
  int number;
  String name;
  String email;
  List<String> ? favirateList=[];
  String password;
  List<String>? history=[];

  Users(
      {required this.number,
      required this.name,
      required this.email,
      required this.password,
        this.favirateList,
        this.history});

  factory Users.fromJson(Map<String, dynamic> json) =>
      _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
