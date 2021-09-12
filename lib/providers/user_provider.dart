import 'package:ecommerce_final_project/models/thu/auth_data.dart';
import 'package:ecommerce_final_project/models/users/users.dart';
import 'package:ecommerce_final_project/services/user_services.dart';
import 'package:flutter/cupertino.dart';

class Userprovider with ChangeNotifier {
  UserServices userservices = UserServices();
  Users? userData;
  AuthData? user;
  Map<dynamic, dynamic> ?name;
  bool isLoading = true;

  bool isSigningIn = true;
  List<String> favirateData = [];

  Future registration(String email, String password) async {
    user = await userservices.singUpuser(email, password);
    notifyListeners();
  }

  Future loginUser(String email, String password) async {
    // isLoading = true;
    user = await userservices.singInUser(email, password);
    // isLoading = false;
    notifyListeners();
    return user;
  }

  Future getUser(String url) async {
    try {
      userData = await userservices.getData(url);
    } catch (e) {
      print("error1");
    } finally {
      notifyListeners();
    }
  }

  gettheUser(String url) {
    try {
      return userservices.getnameData(url);
    } catch (e) {
      print("error2");
    } finally {
      notifyListeners();
    }
  }

  Future setUser(
      {var url,
      required int number,
      required String name,
      required String email,
      required String password,
      required List<String> favirateList,
      required List<String> history}) async {
    await userservices.setDataSS(
        url: url,
        number: number,
        name: name,
        email: email,
        password: password,
        favirateList: [],
        history: []);
    notifyListeners();
  }

  Future addFavirate({required url, required favirate}) async {
    await userservices.addToFavirate(url: url, favirate: favirate);
    notifyListeners();
  }

  Future deleteFavirate({required url, required name}) async {
    await userservices.delateFavirate(url: url, name: name);
    notifyListeners();
  }

  Future getFavirateData({
    required url,
  }) async {
    isLoading = true;
    print("----------------------");
    favirateData = await userservices.getfaviret(url: url);
    isLoading = false;

    notifyListeners();
  }

  Future getname({
    required url,
  }) async {
    isLoading = true;
    print("----------------------");
    name = await userservices.getname(url: url);
    isLoading = false;

    notifyListeners();
  }
}
