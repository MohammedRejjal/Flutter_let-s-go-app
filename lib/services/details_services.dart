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

      Map<String, dynamic> res = await restApi.get('details/$url')??{};

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
          'details/Dead Sea.json',
          setDetailes(
            [{'FREE':0.0},{'free':1}],
            {},
            category: 'tourism',
            id: "medical-tourism",
            name: 'Dead Sea',
            mainImagUrl: "https://velvetescape.com/wp-content/uploads/2011/11/IMG_2370-3-1280x920.jpg",
            location: 'Amman',
            latitude: 31.60401778310353, 
            longitude: 35.56165723838569,
            infoDetails:
                "The Dead Sea has attracted visitors from around the Mediterranean Basin for thousands of years. It was one of the world's first health resorts (for Herod the Great), and it has been the supplier of a wide variety of products, from asphalt for Egyptian mummification to potash for fertilisers. Today, tourists visit the sea on its Israeli, Jordanian and West Bank coastlines. The Palestinian tourism industry has been met with setbacks in developing along the West Bank coast.",
            imagesUrl: [
              'https://pix10.agoda.net/geo/city/18362/1_18362_02.jpg?s=1920x822',
              'https://velvetescape.com/wp-content/uploads/2011/11/IMG_2370-3-1280x920.jpg',
              'https://cdn-bmalj.nitrocdn.com/uirOOtSrYrqqUksKHkiSCjZGZlPeXsmk/assets/static/optimized/rev-0404f4f/images/dead-sea-jordan-dave-mud.jpg',
              
            ],
          ));
    } catch (EX) {
      throw EX;
    }
  }
}

Detailes setDetailes(
  List<Map<String, double>> price,
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
