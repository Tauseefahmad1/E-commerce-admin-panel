class Product {
  String? id, name, image, description, price;
  List<String>? images;
  bool? isfavorite = false;
  List<String>? sizes;
  String? categoryId;
  //Color color;

  Product(
      {this.id,
      this.name,
      this.images,
      this.description,
      this.sizes,
      this.price,
      this.isfavorite});

  Product.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }

    List<String> listOfsize = [];
    if (map['size'] != null) {
      map['size'].forEach((content) {
        listOfsize.add(content);
      });
    } else {
      listOfsize = [];
    }
    List<String> listofimages = [];

    if (map['images'] != null) {
      map['images'].forEach((content) {
        listofimages.add(content);
      });
    } else {
      listofimages = [];
    }

    id = map["productId"];
    name = map["name"];
    images = listofimages;
    description = map["description"];
    //color = HexColor.fromHex(map["color"]);
    sizes = listOfsize;
    price = map["price"];
    // isfavorite = map["isfavorite"];
    categoryId = map["categoryId"];
  }

  toJson() {
    return {
      'productId': id,
      'name': name,
      'images': images,
      'description': description,
      'size': sizes,
      'price': price,
      // cast bool
      // 'isfavorite': isfavorite ? 1 : 0,
    };
  }
}
