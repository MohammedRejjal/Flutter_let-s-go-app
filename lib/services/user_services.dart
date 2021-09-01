import 'dart:convert';
import 'dart:ffi';
import 'dart:math';

import 'package:ecommerce_final_project/models/thu/auth_data.dart';
import 'package:ecommerce_final_project/models/users/users.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as a;
import 'package:http/http.dart' as http;

class UserServices {
  AppApi restApi = AppApi();
  Future<Users?> getData(String url) async {
    try {
      print('aaabbbbccccddddeeeeffffggggg');
      var res = await restApi.get('user/$url.json');
      print('===========' + "${res.length}");
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);
      print("myMap  :" + "${myMap.values}");

      // for (var item in myMap.keys) {
      //   detailsList.add(Users.fromJson(myMap[item]));
      // }
      return Users.fromJson(myMap);
    } catch (ex) {
      print('erorr');
      print(ex.toString());
    }
  }

  Future<AuthData?> singUpuser(String email, String password) async {
    try {
      var res = await http.post(
          Uri.parse(
              "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyA16d-WS67kexJFgScQYA9StuxAq48zmos"),
          body: json.encode({
            'password': password,
            'email': email,
            'returnSecureToken': true
          }));

      print(res.statusCode);
      if (res.statusCode == 200 || res.statusCode == 400) {
        print("-----" + "${AuthData.fromJson(json.decode(res.body)).userId}");
        return AuthData.fromJson(json.decode(res.body));
      }
      //  appApi.post('users.json',setuserSignUp(number: number, name: name, email: email, password: password, favirateList: favirateList, history: history) );
    } catch (EX) {
      print(EX.toString());
    }
  }

  Future<AuthData?> singInUser(String email, String password) async {
    try {
    var res = await http.post(
      Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyA16d-WS67kexJFgScQYA9StuxAq48zmos'),
      body: json.encode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    print(res.statusCode);
    if (res.statusCode == 200 || res.statusCode == 400) {
      print("////////" + "${AuthData.fromJson(json.decode(res.body)).userId}");
      return AuthData.fromJson(json.decode(res.body));
    } } catch (EX) {
      print(EX.toString());
    }
   }

  Future setDataSS(
      {required String url,
      required int number,
      required String name,
      required String email,
      required String password,
      var favirateList,
      var history}) async {
    try {
      AppApi appApi = AppApi();
      appApi.pul(
          'user/$url.json',
          setuser(
              number: number,
              name: name,
              email: email,
              password: password,
              favirateList: favirateList,
              history: history));
      return url;
    } catch (EX) {
      throw EX;
    }
  }

  Future addToHistory({
    required String url,
    required Map<String, String> history,
  }) async {
    try {
      AppApi appApi = AppApi();
      appApi.post(
          'user/$url/history.json', {history.keys.first: history.values.first});
      return url;
    } catch (EX) {
      throw EX;
    }
  }
}

Users setuser(
    {required int number,
    required String name,
    required String email,
    required String password,
    required List<String> favirateList,
    required List<String> history}) {
  return Users(
      number: number,
      name: name,
      email: email,
      password: password,
      favirateList: favirateList,
      history: history);
}
