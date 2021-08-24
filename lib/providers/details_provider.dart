import 'package:ecommerce_final_project/models/details.dart';
import 'package:ecommerce_final_project/models/specific_details.dart';
import 'package:ecommerce_final_project/models/sub_category.dart';
import 'package:ecommerce_final_project/services/details_services.dart';
import 'package:flutter/material.dart';

class DetailsProvider with ChangeNotifier {
 DetailesServices detailesServices = DetailesServices();
  List<Details> detailes_data = [];

  Future getAllShop() async {
    detailes_data = await detailesServices.getData();
    notifyListeners();
  }
 
 
 
 
 
 
 
 
 
 
 
 
  // var d = [
  //   SubCategory(
  //       id: 's1',
  //       name: 'football',
  //       imagUrl: 'imagUrl',
  //       categ: 'categ',
  //       details: [Details(
  //   name: 'Basketball',
  //   imagUrl: 'assets/kyoto.jpg',
  //   price: 22,
  //   location: 'location',
  //   faverate: false,
  //   categ: 'm1',
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
  //       categ: 'M1') ,
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
  //       categ: 'M1')] 
 
  //   ),]
  //   )
  // ];
}
