import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';

class DetailsServices {
  AppApi restApi = AppApi();

  Future getData() async {
    try {
      List<Detailes> detailsList = [];

      Map<String, dynamic> res = await restApi.get('details.json');
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);

      myMap.forEach((key, value) {
        detailsList.add(Detailes.fromJson(value));
      });

      return detailsList;
    } catch (ex) {
      throw Exception(ex);
    }
  }

  Future setDataSS() async {
    try {
      AppApi appApi = AppApi();
      appApi.post(
          'details.json',
          setDetailes(
            {},{},
            id: "general-tourism",
            name: 'Nebu mountain',
            mainImagUrl:
                'https://igoogledjordan.com/wp-content/uploads/2018/08/Jordan-mountnebo_bs-1024x683.jpg',
            location: 'Madaba',
            latitude: 31.77060440586509,
            longitude: 35.7248465377747,
            infoDetails: '''
جبل نيبو من أهم الأماكن السياحية في الأردن , حيث يحتل منزلة خاصة في قلوب أصحاب الديانات السماوية

وهو جبل عريق يبلغ ارتفاعه 710 مترًا فوق مستوى سطح البحر، وورد ذكره في بعض الكتب المقدسة .

يبعد الجبل 30 كيلومتر عن العاصمة عمان والبحر الميت، وحوالي 10 كيلومتر عن مدينة مادبا

الأنشطة التي يمكن القيام بها في الجبل :

يُمكنك الاستمتاع بجولة سريعة سيرًا على الأقدام في مُحيط جبل نبيو للتعرف على المكان ومعالمه-1
التقاط بعض الصور لطبيعته الجميلة، ولبعض الآثار-2
زيارة الهيكل الذي يتضمن بقايا حفريات الكنيسة-3
على قمة الجبل يُمكنك مشاهدة وادي نهر الأردن، ومدينة أريحا، والقدس إن كانت السماء صافية-4
            ''',
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

Detailes setDetailes(Map<String, double> price,Map<String, String>  workhours,
    {required String id,
    required String name,
    required String mainImagUrl,
    required String location,
    required double latitude,
    required double longitude,
    required String infoDetails,
    required List<String> imagesUrl,
      }) {
  return Detailes(    
        price,  workhours,

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
