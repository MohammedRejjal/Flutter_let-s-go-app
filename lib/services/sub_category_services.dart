import 'package:ecommerce_final_project/models/sub_category/sub_category.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';

class SubCategoryServices {
  AppApi restApi = AppApi();

  Future getData() async {
    try {
      List<SubCategory> detailsList = [];
      print("++++++++++++");
      var res = await restApi.get('subCategory.json');
      Map<String, dynamic> myMap = Map<String, dynamic>.from(res);
      myMap.forEach(
        (key, value) {
           detailsList.add(SubCategory.fromJson(value));
        },
      );
      return detailsList;

      //   AppApi appApi = AppApi();

      //   Map<String, dynamic> rest = await appApi.get('category.json');
      // Map<String, dynamic>   myMap = Map<String, dynamic>.from(rest);
      //   myMap.forEach((key, value) {
      // if (value['name'] == 'tourism') {

      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'medical-tourism', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'general-tourism', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'religious-tourism', imagUrl: 'imagUrl') );
      // }

      //     if (value['name'] == 'Archaeological') {

      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Castles', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Palaces', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Mosaic', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Old houses', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Ancient cities', imagUrl: 'imagUrl') );
      // }

      //     if (value['name'] == 'kids places') {

      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Parks', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Game centers', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Cultural', imagUrl: 'imagUrl') );
      //   }
      //          if (value['name'] == 'Nature') {

      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Nature reserve', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Bird park', imagUrl: 'imagUrl') );
      //    }

      //          if (value['name'] == 'Games') {

      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Trampoline park', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Eaintball', imagUrl: 'imagUrl') );
      //       appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Escape the room', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Board games', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Ski', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Guys houses', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Bowling', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Vr game', imagUrl: 'imagUrl') );
      //      appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Basketball', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Golf', imagUrl: 'imagUrl') );
      //      appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Tennis', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Resorts', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Water cities', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Entertainment cities', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Football', imagUrl: 'imagUrl') );

      //    }
      //   if (value['name'] == 'Farms') {

      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Farm with playground', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Family farm', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Parties farm', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'vip-farm', imagUrl: 'imagUrl') );

      //    }
      //     if (value['name'] == 'Sport') {

      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Swimming & diving', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Car', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Horses', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Sport club', imagUrl: 'imagUrl') );

      //    }
      //      if (value['name'] == 'Adventure') {

      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Parachuting', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Hunting & shooting', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Telescope', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Camping', imagUrl: 'imagUrl') );
      //     appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Helicopter', imagUrl: 'imagUrl') );
      //    appApi.post('subCategory.json',setSubCategory(id: value['name'], name: 'Water & land & mountain climbing', imagUrl: 'imagUrl') );
      //    }

    } catch (ex) {
      throw Exception(ex);
    }
  }
}

SubCategory setSubCategory(
    {required String id, required String name, required String imagUrl}) {
  return SubCategory(id: id, name: name, imagUrl: imagUrl);
}
