class Cart {
  List<String> cart = [];

  void ShowCart() {
    for (int i = 0; i <= cart.length; i++) {
      print(" cart:$i");
    }
  }
}
