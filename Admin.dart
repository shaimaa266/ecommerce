import 'Customer.dart';
import 'Products.dart';

class Admin {
  String? _name;
  String? phone;
  String? email;
  String? _password;
  int? id;
  Products? products;

  void SetName(String value) {
    _name = value;
  }

  void getName() => _name!;
  void SetPass(String value) {
    _password = value;
  }

  void getPass() => _password!;

  void AddItem({required String name, required double price}) {
    products!.items.add(name);
    print("$name \'s cost is $price");
  }

  void RemoveItem({required String name}) {
    products!.items.remove(name);
  }

  void UpdateDetails(
      {required String name,
      required double price,
      required bool is_available}) {
    print("$name ,it cost:$price,is available:$is_available");
  }

  void ViewProduct() {
    for (int i = 0; i <= products!.items.length; i++) {
      print("products are :$i");
    }
  }

  String ConfirmOrder() {
    Customer customer = Customer();
    print("${customer.name} has recieved ${customer.cart}");
    return "Oreder delivered successgully ";
  }

  void SignUp({required String e_mail, required String password}) {
    email = e_mail;
    _password = password;
    print("welcome ,sign up successfully");
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
}
