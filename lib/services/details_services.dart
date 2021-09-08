import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';
import 'package:flutter/foundation.dart';

class DetailsServices {
  AppApi restApi = AppApi();
  List<String> keyss = [];

  List commValue = [];
  List commKeys = [];
  Future getData() async {
    try {
      List<Detailes> detailsList = [];

      Map<String, dynamic> res = await restApi.get('details.json');
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);

      myMap.forEach((key, value) {
        detailsList.add(Detailes.fromJson(value));
        keyss.add(key);
      });

      return detailsList;
    } catch (ex) {
      throw Exception(ex);
    }
  }

  Future getFeedback(String url) async {
    try {
      print('url $url');
      Map<String, dynamic> res = await restApi.get('details/$url');

      print("res++  $res");

      res.forEach((key, value) {
        commValue.add(value);
        commKeys.add(key);

        print("key $key");
        print("Value $value");
      });
      return res;
    } catch (ex) {
      return [0];
    }
  }

  Future addFeedback({
    required String url,
    required Map<String, dynamic> feedback,
  }) async {
    try {
      Map<String, dynamic> m = {feedback.keys.first: feedback.values.first};
      restApi.patch('details/$url/feedback.json', m);

      return url;
    } catch (EX) {
      print('error');
      throw EX;
    }
  }

  Future addRating({
    required String url,
    required int rating,
  }) async {
    try {
      restApi.patch('details/$url/rating.json', {'rating': rating});
      return url;
    } catch (EX) {
      throw EX;
    }
  }

  Future setDataSS(String url) async {
    try {
      AppApi appApi = AppApi();
      appApi.pul(
          'details/Ma\'in Hot Springs.json',
          setDetailes(
            {},
            {},
            category: 'tourism',
            id: "medical-tourism",
            name: 'Ma\'in Hot Springs',
            mainImagUrl: "https://static.toiimg.com/photo/59265784.cms",
            location: 'Amman',
            latitude: 31.610038249544758,
            longitude: 35.611427780719346,
            infoDetails:
                """Main hot springs resort & Spa  presents many Jordanian life experiences in a comfortable, wholesome and sustainable way, we offer the opportunity to feel the true pulse of the Middle East.. from its traditional mystical roots to its present day uniqueness.
Life service is attentive and personalized, with our hosts being especially knowledgeable and caring. We are proud to offer Arabic hospitality. 
Set like an oasisi in the dramatic terrain, the location is easily accessible and defines the resort and spa experiences  in the Middle East,making it a destination of choice for those seeking the perfect retreat to relax and be pampered whilist enjoying the therapeutic benefits of Ma'in Hot spring  waterfalls""",
            imagesUrl: [
              'https://tashatgo.com/wp-content/uploads/2021/07/%D9%83.jpg',
              'https://tashatgo.com/wp-content/uploads/2021/07/201112261367680.jpg',
              'https://tashatgo.com/wp-content/uploads/2021/07/img_1417795335_812.jpg',
              'https://tashatgo.com/wp-content/uploads/2021/07/%D8%AA%D9%86%D8%B2%D9%8A%D9%84-3.jpg',
            ],
          ));
    } catch (EX) {
      throw EX;
    }
  }
}

Detailes setDetailes(
  Map<String, double> price,
  Map<String, String> workhours, {
  required String category,
  required String id,
  required String name,
  required String mainImagUrl,
  required String location,
  required double latitude,
  required double longitude,
  required String infoDetails,
  required List<String> imagesUrl,
}) {
  return Detailes(
    category,
    price,
    workhours,
    id: id,
    name: name,
    mainImagUrl: mainImagUrl,
    location: location,
    latitude: latitude,
    longitude: longitude,
    infoDetails: infoDetails,
    imagesUrl: imagesUrl,
  );
}
