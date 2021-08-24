import 'package:ecommerce_final_project/models/specific_details.dart';
import 'package:ecommerce_final_project/models/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'details.g.dart';

@JsonSerializable()
class Details {
  final String name;
  final String imagUrl;
  final int price;
  final String location;
  final bool faverate;
 
  final List<SpecificDetailes> specific_detailes;

  Details(
      {required this.specific_detailes,
      required this.name,
      required this.imagUrl,
      required this.price,
      required this.location,
      required this.faverate,
       });


    
factory Details.fromJson(Map<String, dynamic> json) =>

      _$DetailsFromJson(json);



  Map<String, dynamic> toJson() => _$DetailsToJson(this);  
}


