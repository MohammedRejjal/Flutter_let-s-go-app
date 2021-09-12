import 'dart:convert';
import 'dart:math';

import 'package:ecommerce_final_project/models/thu/auth_data.dart';
import 'package:ecommerce_final_project/models/users/users.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';
import 'package:firebase_auth/firebase_auth.dart' as a;
import 'package:firebase_auth_rest/rest.dart';
import 'package:http/http.dart' as http;

class UserServices {
  AppApi restApi = AppApi();
  Future getData(String url) async {
    try {
      print('aaabbbbccccddddeeeeffffggggg');
      var res = await restApi.get('user/$url.json');
      print('===========' + "${res.length}");
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);
      print("myMap  :" + "$myMap");
       print("x == ${Users.fromJson(myMap)}");
      // for (var item in myMap.keys) {
      //   detailsList.add(Users.fromJson(myMap[item]));
      // }
      return Users.fromJson(myMap);
    } catch (ex) {
      print('111');
      print(ex.toString());
    }
  }

  Future getnameData(String url) async {
    try {
      print('aaabbbbccccddddeeeeffffggggg');
      var res = await restApi.get('user/$url.json');
      print('===========' + "${res.length}");
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);
      print("myMap  :" + "$myMap");
      var x = Users.fromJson(myMap);
      print("x = $x");
      // for (var item in myMap.keys) {
      //   detailsList.add(Users.fromJson(myMap[item]));
      // }
      return myMap;
    } catch (ex) {
      print('erorr');
      print(ex.toString());
    }
  }

  var resData;
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
      resData = jsonDecode(res.body);

      if (res.statusCode == 200 || res.statusCode == 400) {
        print("-----" + "${AuthData.fromJson(json.decode(res.body)).userId}");
        return AuthData.fromJson(json.decode(res.body));
      }
      //  appApi.post('users.json',setuserSignUp(number: number, name: name, email: email, password: password, favirateList: favirateList, history: history) );
    } catch (e) {
      throw throw "${resData['error']['message']}";
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
        print(
            "////////" + "${AuthData.fromJson(json.decode(res.body)).userId}");
        return AuthData.fromJson(json.decode(res.body));
      }
    } catch (EX) {
      print(EX.toString());
    }
  }

  Future setDataSS(
      {required String url,
      required int number,
      required String name,
      required String email,
      required String password,
      required List<String> favirateList,
      required List<String> history}) async {
    try {
      restApi.pul(
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

  Future addToFavirate({
    required String url,
    required String favirate,
  }) async {
    try {
      restApi.patch('user/$url/favirateList.json',
          {favirate: favirate});
      return url;
    } catch (EX) {
      throw EX;
    }
  }

  Future delateFavirate({
    required String url,
    required String name,
  }) async {
    try {
      restApi.delete(
        'user/$url/favirateList/$name.json',
      );
      return url;
    } catch (EX) {
      throw EX;
    }
  }

  Future getfaviret({
    required String url,
  }) async {
    try {
      List<String> detailsList = [];
      print("++++++++++++");
      var res = await restApi.get('user/$url/favirateList.json');
      if (res == null) {
        return [''];
      }
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);
      myMap.forEach(
        (key, value) {
          detailsList.add(key);
        },
      );

      return detailsList;
    } catch (ex) {
      throw Exception(ex);
    }
  }

    Future getname({
    required String url,
  }) async {
    try {
      
      print("++++++++++++");
      var res = await restApi.get('user/$url/name.json');
                 print("++++++++++++res $res");

      return res;
    } catch (ex) {
      throw Exception(ex);
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
