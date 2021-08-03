class Category {
  num? number;
  String? name;
  String? imgeURL;
  String? id;

  Category(Map<String, dynamic> json) {
    this.number = json['number'];
    this.name = json['name'];
    this.imgeURL = json['imgeURL'];
    this.id = json['id'];
  }
}
