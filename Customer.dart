import 'Products.dart';
import 'Users.dart';

class Customer extends Users {
  String? name;
  String? address;
  String? _password;
  String? email;
  Products? products;
  String? cardNumber;

  List<String> cart = [];
  void SetPassword(String value) {
    _password = value;
  }

  String GetPassword() => _password!;

  void AddCart({required String name}) {
    if (name == products!.items) {
      cart.add(name);
    }
  }

  void DeleteCart({required String name}) {
    if (name == products!.items) {
      cart.remove(name);
    }
  }

  void Login({required String e_mail, required String password}) {
    if (e_mail == this.email && password == this._password) {
      print("welcome back !");
    } else {
      print("try again ");
    }
  }

  void LogOut({required String e_mail, required String password}) {
    if (e_mail == this.email && password == this._password) {
      e_mail = "";
      _password = "";
    } else {
      print("try again ");
    }
  }

  void pay(cardNumber) {
    double? cost = products!.price;
    if (cost == 10000) {
      print("process done ");
    }
  }

  @override
  void ShowProducts() {
    for (int i = 0; i <= products!.items.length; i++) {
      print("products are :$i");
    }
  }
}
