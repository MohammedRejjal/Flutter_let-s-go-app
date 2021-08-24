import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';

class DetailesServices {
  AppApi restApi = AppApi();

  Future getData() async {
    try {
      List<Details> detailsList = [];

      var res = await restApi.get('');
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);

 
      for (var item in myMap.keys) {
        detailsList.add(Details.fromJson(myMap[item] ));
      }

 
      return detailsList;
 
    } catch (ex) {
      throw Exception(ex);
    }
  }
}
