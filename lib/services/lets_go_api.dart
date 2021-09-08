import 'dart:convert';
import 'package:http/http.dart' as http;

class AppApi {
  String baseUrl = "https://lets--go-app-default-rtdb.firebaseio.com/";

  Future get(String url) async {
    Map<String, dynamic> jsonBody;
    try {
      var response = await http.get(Uri.parse(baseUrl + url));
      if (response.statusCode == 200) {
        jsonBody = new Map<String, dynamic>.from(json.decode(response.body));
        print("jsonbody  " + "$jsonBody");
        return jsonBody;
      }
    } catch (ex) {
      print(ex.toString());
    }
  }

  Future<dynamic> post(String url, var body) async {
    var responeJson;
    print(body);
    try {
      var data =
          await http.post(Uri.parse(baseUrl + url), body: json.encode(body));

      if (data.statusCode == 200) {
        responeJson = jsonEncode(data.body);
      }
      if (data.statusCode == 500) {
        print('wrong for connection with API');
      }
    } catch (e) {
      print(e);
    }
    return responeJson;
  }

  Future pul(String url, var body) async {
    var responeJson;
    print(body);
    try {
      var data =
          await http.put(Uri.parse(baseUrl + url), body: json.encode(body));

      if (data.statusCode == 200) {
        responeJson = jsonEncode(data.body);
      }
      if (data.statusCode == 500) {
        print('wrong for connection with API');
      }
    } catch (e) {
      print(e);
    }
    return responeJson;
  }


   Future patch(String url, var body) async {
    var responeJson;
    try {
      var data =
          await http.patch(Uri.parse(baseUrl + url), body: json.encode(body));

      if (data.statusCode == 200) {
        responeJson = jsonEncode(data.body);
      }
      if (data.statusCode == 500) {
        print('wrong for connection with API');
      }
    } catch (e) {
      print(e);
    }
    return responeJson;
  }

  Future delete(String url) async {
    var responeJson;
     try {
      var data =
          await http.delete(Uri.parse(baseUrl + url ),);

      if (data.statusCode == 200) {
        responeJson = jsonEncode(data.body);
      }
      if (data.statusCode == 500) {
        print('wrong for connection with API');
      }
    } catch (e) {
      print(e);
    }
    return responeJson;
  }
}




dynamic processedResponseDecode(http.Response response) {
  switch (response.statusCode) {
    case 200:

    case 500:
      throw Exception('somethink went wrong');
  }
}
