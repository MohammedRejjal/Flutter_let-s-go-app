
class Items {
  String? shopId;
  String? subCategoryId;
  String? category;
  String? name;
  String? image;
  String? itemDetails;
  double? price;
  double? priceToAdd;
  List<ItemsOptions>? itemsOptions1 = [];
  String? id;
  String? updatedOn;
  String? createdOn;

  Items(Map<String, dynamic> json) {
    this.shopId = json['shopId'];
    this.subCategoryId = json['subCategoryId'];
    this.category = json['category'];
    this.name = json['name'];
    this.image = json['image'];
    this.itemDetails = json['itemDetails'];
    this.price = json[price];
    this.priceToAdd = json[priceToAdd];
    this.itemsOptions1 = json[ItemsOptions];
    this.id = json['id'];
    this.updatedOn = json['updatedOn'];
    this.createdOn = json['createdOn'];
  }
}

// ignore: camel_case_types
class ItemsOptions {
  int? id;
  String? typeName;
  int? type;
  String? name;
  double? price;
  double? priceToAdd;

  ItemsOptions(Map<String, dynamic> json) {
    this.id = json[id];
    this.typeName = json['typeName'];
    this.type = json[type];
    this.name = json['name'];
    this.price = json[price];
    this.priceToAdd = json[priceToAdd];
  }
}
