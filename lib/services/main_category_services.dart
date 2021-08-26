import 'dart:convert';

import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/models/main_category.dart';
import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/models/sub_category.dart';
import 'package:ecommerce_final_project/providers/main_category_provider.dart';
import 'package:ecommerce_final_project/screens/onbording/onboarding_screen.dart';
import 'package:ecommerce_final_project/screens/widgets/getdata.dart';
import 'package:ecommerce_final_project/services/lets_go_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class MainCategoryServices {
   List<MainCategory> categories = [];
  bool isLoading = true;
  Future getData() async {
    try {AppApi appApi = AppApi();

      Map<String, dynamic> rest = await appApi.get('category.json');
    Map<String, dynamic>   myMap = Map<String, dynamic>.from(rest);
      myMap.forEach((key, value) {
 
   
        categories.add(MainCategory.fromJson(value));
      });

      return categories;
      //AppApi appApi = AppApi();
      
      // Map<String, dynamic> res = await appApi.get('category.json');
      // // myMap = Map<String, dynamic>.from(res);
      // res.forEach((key, value) {
      //   userlist.add(key + '.json');
      // });
       // appApi.post('category.json',setMainCategory('Sport', 'assets/sport.jpg') );
      // appApi.post('category.json',setMainCategory('Nature', 'assets/sport.jpg') );
      // appApi.post('category.json',setMainCategory('Games', 'assets/sport.jpg') );
      // appApi.post('category.json',setMainCategory('Farms', 'assets/sport.jpg') );
      // appApi.post('category.json',setMainCategory('Adventure', 'assets/sport.jpg') );
      // appApi.post('category.json',setMainCategory('kids places', 'assets/sport.jpg') );
      // appApi.post('category.json',setMainCategory('Archaeological sites', 'assets/sport.jpg') );
      // appApi.post('category.json',setMainCategory('tourism', 'assets/sport.jpg') );

    } catch (ex) {
      throw Exception(ex);
    }
  }
}
    
      


List<MainCategory> detailsList = [];
MainCategory setMainCategory(String name, String imageUrl ,String icon) {
  return MainCategory(name: name, imageUrl: imageUrl , icon: icon) ;
}

SubCategory setSubCategory(String id, String name, String imagUrl) {
  return SubCategory(id: id, name: name, imagUrl: imagUrl);}
// var x = setdata(
//     maincategory_name: 'Sport',
//     maincategory_imageUrl: 'assets/sport.jpg',
//     subcategory_id: 's1',
//     subcategory_name: 'football',
//     subcategory_imagUrl: 'imagUrl',
//     details_name: 'Basketball',
//     details_imagUrl: 'assets/kyoto.jpg',
//     details_price: 22,
//     details_location: 'amman',
//     details_faverate: false,
//     specificDetailes_name: 'name',
//     specificDetailes_mainImagUrl: 'specificDetailes_mainImagUrl',
//     specificDetailes_price: {'SADAS': 55},
//     specificDetailes_location: 'Amman',
//     specificDetailes_latitude: 76,
//     specificDetailes_longitude: 76,
//     specificDetailes_infoDetails: 'specificDetailes_infoDetails',
//     specificDetailes_imagesUrl: ['SAD', 'SAD'],
//     specificDetailes_workhours: {'5-50': 'MANDY'});
 //     name: 'Sport',
//     imageUrl: 'assets/sport.jpg',
//     subcategory: [
//       SubCategory(
//           id: 's1',
//           name: 'football',
//           imagUrl: 'imagUrl',
//           details: [
//             Details(
//                 name: 'Basketball',
//                 imagUrl: 'assets/kyoto.jpg',
//                 price: 22,
//                 location: 'location',
//                 faverate: false,
//                 specific_detailes: [
//                   SpecificDetailes(
//                     name: 'name',
//                     mainImagUrl: 'mainImagUrl',
//                     price: {'SADAS': 55},
//                     location: 'AMMAN',
//                     latitude: 33,
//                     longitude: 22,
//                     infoDetails: 'infoDetails',
//                     imagesUrl: ['SAD', 'SAD'],
//                     workhours: {'5-50': 'MANDY'},
//                   ),
//                   SpecificDetailes(
//                     name: 'name',
//                     mainImagUrl: 'mainImagUrl',
//                     price: {'SADAS': 55},
//                     location: 'AMMAN',
//                     latitude: 33,
//                     longitude: 22,
//                     infoDetails: 'infoDetails',
//                     imagesUrl: ['SAD', 'SAD'],
//                     workhours: {'5-50': 'MANDY'},
//                   )
//                 ]),
//           ]),
//       SubCategory(
//           id: 's1',
//           name: 'football',
//           imagUrl: 'imagUrl',
//           details: [
//             Details(
//                 name: 'Basketball',
//                 imagUrl: 'assets/kyoto.jpg',
//                 price: 22,
//                 location: 'location',
//                 faverate: false,
//                 specific_detailes: [
//                   SpecificDetailes(
//                     name: 'name',
//                     mainImagUrl: 'mainImagUrl',
//                     price: {'SADAS': 55},
//                     location: 'AMMAN',
//                     latitude: 33,
//                     longitude: 22,
//                     infoDetails: 'infoDetails',
//                     imagesUrl: ['SAD', 'SAD'],
//                     workhours: {'5-50': 'MANDY'},
//                   ),
//                   SpecificDetailes(
//                     name: 'name',
//                     mainImagUrl: 'mainImagUrl',
//                     price: {'SADAS': 55},
//                     location: 'AMMAN',
//                     latitude: 33,
//                     longitude: 22,
//                     infoDetails: 'infoDetails',
//                     imagesUrl: ['SAD', 'SAD'],
//                     workhours: {'5-50': 'MANDY'},
//                   )
//                 ]),
//           ]),
//     ]);
