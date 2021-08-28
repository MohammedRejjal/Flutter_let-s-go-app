import 'dart:convert';

import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/models/main_category/main_category.dart';
import 'package:ecommerce_final_project/models/details/details.dart';
import 'package:ecommerce_final_project/models/sub_category/sub_category.dart';
import 'package:ecommerce_final_project/models/users/users.dart';
import 'package:ecommerce_final_project/services/main_category_services.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class MainCategoryProvider with ChangeNotifier {
  MainCategoryServices mainCategoryServices = MainCategoryServices();
  List Category_data = [];
  bool stuts = true;

  Future getAllCategory() async {
    stuts = true;
    Category_data = await mainCategoryServices.getData();
    if (Category_data != null) {
      stuts = false;
    }
    notifyListeners();
  }
}
  // var d2 = SubCategory(
  //     id: 's1',
  //     name: 'football',
  //     imagUrl: 'imagUrl',

  //     details: [
  //       Details(
  //           name: 'Basketball',
  //           imagUrl: 'assets/kyoto.jpg',
  //           price: 22,
  //           location: 'location',
  //           faverate: false,

  //           specific_detailes: [
  //             SpecificDetailes(
  //                 name: 'name',
  //                 mainImagUrl: 'mainImagUrl',
  //                 price: {'SADAS': 55},
  //                 location: 'AMMAN',
  //                 latitude: 33,
  //                 longitude: 22,
  //                 infoDetails: 'infoDetails',
  //                 imagesUrl: ['SAD', 'SAD'],
  //                 workhours: {'5-50': 'MANDY'},
  //                ),
  //            SpecificDetailes(
  //                 name: 'name',
  //                 mainImagUrl: 'mainImagUrl',
  //                 price: {'SADAS': 55},
  //                 location: 'AMMAN',
  //                 latitude: 33,
  //                 longitude: 22,
  //                 infoDetails: 'infoDetails',
  //                 imagesUrl: ['SAD', 'SAD'],
  //                 workhours: {'5-50': 'MANDY'},
  //                ),
  //           ]),
  //     ]);

  // var data = [
  //   MainCategory(
  //       name: 'Sport', imageUrl: 'assets/sport.jpg',  subcategory: [
  //         SubCategory(
  //       id: 's1',
  //       name: 'football',
  //       imagUrl: 'imagUrl',

  //       details: [Details(
  //   name: 'Basketball',
  //   imagUrl: 'assets/kyoto.jpg',
  //   price: 22,
  //   location: 'location',
  //   faverate: false,

  //       specific_detailes:[
  //         SpecificDetailes(
  //       name: 'name',
  //       mainImagUrl: 'mainImagUrl',
  //       price: {'SADAS': 55},
  //       location: 'AMMAN',
  //       latitude: 33,
  //       longitude: 22,
  //       infoDetails: 'infoDetails',
  //       imagesUrl: ['SAD', 'SAD'],
  //       workhours: {'5-50': 'MANDY'},
  //       ) ,
  //         SpecificDetailes(
  //       name: 'name',
  //       mainImagUrl: 'mainImagUrl',
  //       price: {'SADAS': 55},
  //       location: 'AMMAN',
  //       latitude: 33,
  //       longitude: 22,
  //       infoDetails: 'infoDetails',
  //       imagesUrl: ['SAD', 'SAD'],
  //       workhours: {'5-50': 'MANDY'},
  //       )]

  //   ),]
  //   ),
  //   SubCategory(
  //       id: 's1',
  //       name: 'football',
  //       imagUrl: 'imagUrl',

  //       details: [Details(
  //   name: 'Basketball',
  //   imagUrl: 'assets/kyoto.jpg',
  //   price: 22,
  //   location: 'location',
  //   faverate: false,

  //       specific_detailes:[
  //         SpecificDetailes(
  //       name: 'name',
  //       mainImagUrl: 'mainImagUrl',
  //       price: {'SADAS': 55},
  //       location: 'AMMAN',
  //       latitude: 33,
  //       longitude: 22,
  //       infoDetails: 'infoDetails',
  //       imagesUrl: ['SAD', 'SAD'],
  //       workhours: {'5-50': 'MANDY'},
  //       ) ,
  //         SpecificDetailes(
  //       name: 'name',
  //       mainImagUrl: 'mainImagUrl',
  //       price: {'SADAS': 55},
  //       location: 'AMMAN',
  //       latitude: 33,
  //       longitude: 22,
  //       infoDetails: 'infoDetails',
  //       imagesUrl: ['SAD', 'SAD'],
  //       workhours: {'5-50': 'MANDY'},
  //       )]

  //   ),]
  //   ),
  //       ]),
  //       MainCategory(
  //       name: 'Farm', imageUrl: 'assets/farm.jpg',  subcategory: [
  //         SubCategory(
  //       id: 's1',
  //       name: 'football',
  //       imagUrl: 'imagUrl',

  //       details: [Details(
  //   name: 'Basketball',
  //   imagUrl: 'assets/kyoto.jpg',
  //   price: 22,
  //   location: 'location',
  //   faverate: false,

  //       specific_detailes:[
  //         SpecificDetailes(
  //       name: 'name',
  //       mainImagUrl: 'mainImagUrl',
  //       price: {'SADAS': 55},
  //       location: 'AMMAN',
  //       latitude: 33,
  //       longitude: 22,
  //       infoDetails: 'infoDetails',
  //       imagesUrl: ['SAD', 'SAD'],
  //       workhours: {'5-50': 'MANDY'},
  //        ) ,
  //         SpecificDetailes(
  //       name: 'name',
  //       mainImagUrl: 'mainImagUrl',
  //       price: {'SADAS': 55},
  //       location: 'AMMAN',
  //       latitude: 33,
  //       longitude: 22,
  //       infoDetails: 'infoDetails',
  //       imagesUrl: ['SAD', 'SAD'],
  //       workhours: {'5-50': 'MANDY'},
  //        )]

  //   ),]
  //   ),
  //   SubCategory(
  //       id: 's1',
  //       name: 'football',
  //       imagUrl: 'imagUrl',

  //       details: [Details(
  //   name: 'Basketball',
  //   imagUrl: 'assets/kyoto.jpg',
  //   price: 22,
  //   location: 'location',
  //   faverate: false,

  //       specific_detailes:[
  //         SpecificDetailes(
  //       name: 'name',
  //       mainImagUrl: 'mainImagUrl',
  //       price: {'SADAS': 55},
  //       location: 'AMMAN',
  //       latitude: 33,
  //       longitude: 22,
  //       infoDetails: 'infoDetails',
  //       imagesUrl: ['SAD', 'SAD'],
  //       workhours: {'5-50': 'MANDY'},
  //       ) ,
  //         SpecificDetailes(
  //       name: 'name',
  //       mainImagUrl: 'mainImagUrl',
  //       price: {'SADAS': 55},
  //       location: 'AMMAN',
  //       latitude: 33,
  //       longitude: 22,
  //       infoDetails: 'infoDetails',
  //       imagesUrl: ['SAD', 'SAD'],
  //       workhours: {'5-50': 'MANDY'},
  //       )]

  //   ),]
  //   ),
  //       ]),

  // ];

