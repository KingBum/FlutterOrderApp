class Food {
  String? sId;
  String? title;
  String? img;
  int? price;
  String? desc;
  bool? inStock;

  Food({this.sId, this.title, this.img, this.price, this.desc, this.inStock});

  Food.fromJson(dynamic json) {
    sId = json['_id'];
    title = json['title'];
    img = json['img'];
    price = json['price'];
    desc = json['desc'];
    inStock = json['inStock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['img'] = this.img;
    data['price'] = this.price;
    data['desc'] = this.desc;
    data['inStock'] = this.inStock;
    return data;
  }
}