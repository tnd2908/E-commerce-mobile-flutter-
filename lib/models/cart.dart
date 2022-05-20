class Cart {
  String id;
  String name;
  String image;
  double price;
  int totalQuantity;
  int quantity;

  Cart(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.totalQuantity,
      required this.quantity});
}
