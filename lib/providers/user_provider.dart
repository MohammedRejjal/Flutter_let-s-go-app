import 'package:ecommerce_final_project/models/thu/auth_data.dart';
import 'package:ecommerce_final_project/models/users/users.dart';
import 'package:ecommerce_final_project/services/user_services.dart';
import 'package:flutter/cupertino.dart';

class Userprovider with ChangeNotifier {
  UserServices userservices = UserServices();
  var userData;
   AuthData? user;

   bool isLoading = false;

  bool isSigningIn = true;

  Future registration(String email, String password) async {
    user = await userservices.singUpuser(email, password);
     notifyListeners();
  }

 Future loginUser(String email, String password) async {
   // isLoading = true;
    notifyListeners();
    user = await userservices.singInUser(email, password);
   // isLoading = false;
    notifyListeners();
   return user;
  }

  Future getUser(String url) async {
    userData = await userservices.getData(url);
    notifyListeners();
  }

  Future setUser(
      {var url,
      required int number,
      required String name,
      required String email,
      required String password,
      var favirateList,
      var history}) async {
    await userservices.setDataSS(
        url: url,
        number: number,
        name: name,
        email: email,
        password: password,
        favirateList: [''],
        history: ['']);
    notifyListeners();
  }

  Future addHistoty({required url, required history}) async {
    await userservices.addToHistory(url: url, history: history);
    notifyListeners();
  }
}
