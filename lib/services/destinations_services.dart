import 'package:ecommerce_final_project/models/destinations/destinations.dart';
 import 'package:ecommerce_final_project/services/lets_go_api.dart';

class DestinationsServices {
  List<Destinations> data = [];
  bool isLoading = true;
  Future getData() async {
    try {
      AppApi appApi = AppApi();

      Map<String, dynamic> rest = await appApi.get('destinations.json');
      Map<String, dynamic> myMap = Map<String, dynamic>.from(rest);
      myMap.forEach((key, value) {
        data.add(Destinations.fromJson(value) );
      });

      return data;
    } catch (EX) {
      throw EX;
    }
  }
    Future setDataSS() async {
    try {
      AppApi appApi = AppApi();
        appApi.post('destinations.json',setDestinations('Amman', 'https://fshoq.com/uploads/repository/travel/jordania/amman/amman_jordan.jpg') );
        appApi.post('destinations.json',setDestinations('Zarqa', 'https://upload.wikimedia.org/wikipedia/commons/4/42/Qurtobah%2C_Az-Zarqa%2C_Jordan_-_panoramio_%283%29.jpg') );
        appApi.post('destinations.json',setDestinations('Irbid', 'https://www.enicbcmed.eu/sites/default/files/styles/image_style_slider/public/2020-02/irbid_0.jpg?itok=LZTqTea0') );
        appApi.post('destinations.json',setDestinations('Mafraq', 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Al-Mafraq%2C_Jordan_-_panoramio.jpg') );
        appApi.post('destinations.json',setDestinations('Ajloun', 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Ajloun-Jordan.JPG') );
        appApi.post('destinations.json',setDestinations('Jerash', 'https://breathewithus.com/wp-content/uploads/2014/10/IMG_5370.jpg') );
        appApi.post('destinations.json',setDestinations('Madaba', 'https://images.squarespace-cdn.com/content/v1/5a87961cbe42d637c54cab93/1584540877574-9ASEDYST71HXMQHJ9E2T/madaba-things-to-do.jpg?format=1000w') );
        appApi.post('destinations.json',setDestinations('Balqa', 'https://images.alarab.com/data/news/2021/07/27/images/WhatsApp%20Image%202021-07-27%20at%2018_26_22.jpeg?auto_optimize=high') );
        appApi.post('destinations.json',setDestinations('Karak', 'https://bedouinbrothersblog.files.wordpress.com/2013/01/al-karak-castle-chc3a2teau-fort-d_al-karak-jordanie-jordan-d8a7d984d983d8b1d983.jpg') );
        appApi.post('destinations.json',setDestinations('Tafila', 'https://www.constructionweekonline.com/public/images/2018/08/10/Jordan_0.jpg') );
        appApi.post('destinations.json',setDestinations('Maan', 'https://s3-eu-west-1.amazonaws.com/static.jbcgroup.com/amd/pictures/01de194e96b1f92e0a47bbd06ba87064.jpg') );
        appApi.post('destinations.json',setDestinations('Aqaba', 'https://fshoq.com/uploads/repository/travel/jordania/aqaba/aqaba-city-jordan.jpg') );



    } catch (EX) {
      throw EX;
    }
  }
}

Destinations setDestinations(  String name, String imagUrl) {
  return Destinations(name: name, imageUrl: imagUrl);}
