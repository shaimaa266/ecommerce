import 'Products.dart';
import 'Users.dart';

class Guest extends Users {
  Products? products;
  String email = "";
  String password = "";
  @override
  void ShowProducts() {
    for (int i = 0; i <= products!.items.length; i++) {
      print("products are :$i");
    }
  }

  void SignUp({required String e_mail, required String password}) {
    email = e_mail;
    password = password;
    print("welcome ,sign up successfully");
  }
}
