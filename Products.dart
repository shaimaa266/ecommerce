class Products {
  int? id;
  double? price;
  String? made_date;
  String? expiry_date;
  List<String> items = [];
  void ShowProductInfo(
      {required String name,
      required int id,
      required String made_date,
      required String expiry_date}) {
    items.add(name);
    this.id = id;
    this.price = price;
    this.made_date = made_date;
    this.expiry_date = expiry_date;
    print(
        "$name,id:$id,price:$price,made date:$made_date,expiry date:$expiry_date");
  }
}
