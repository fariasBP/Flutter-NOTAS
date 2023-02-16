

// model simple
class AppModel {
  late String name;
  late bool developing;
  late String version;
  late String setProducts;

  AppModel(Map<String, dynamic> json) {
    name = json['name'];
    developing = json['developing'];
    version = json['version'];
    setProducts = json['set_products'];
  }
}

// model con array
class ProductModel {
  late int price;
  late List<String> photos = [];
  late List<String> models = [];
  late List<String> size = [];


  ProductModel(Map<String, dynamic> json) {
    price = json['price'] ?? 0;
    for (String i in json['photos']) {
      photos.add(i.toString());
    }
    for (String i in json['models']) {
      models.add(i.toString());
    }
    for (String i in json['size']) {
      size.add(i.toString());
    }
  }
}
