class Shop {
  String? id;
  double? distance;
  String? name;
  String? logoURL;
  String? details;
  bool? isRoasted;

  Shop(Map<String, dynamic> json) {
    this.id = json['id'];
    this.distance = json['distance'];
    this.name = json['name'];
    this.logoURL = json['logoURL'];
    this.details = json['details'];
    this.isRoasted = json['isRoasted'];
  }
}
