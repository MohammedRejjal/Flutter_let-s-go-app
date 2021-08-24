import 'package:ecommerce_final_project/models/specific_details.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';

class SpecificDetailsServices {
  AppApi restApi = AppApi();

  Future getData() async {
    try {
      List<SpecificDetailes> detailsList = [];

      var res = await restApi.get('');
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);

 
      for (var item in myMap.keys) {
        detailsList.add(SpecificDetailes.fromJson(myMap[item] ));
      }

 
      return detailsList;
 
    } catch (ex) {
      throw Exception(ex);
    }
  }
}
