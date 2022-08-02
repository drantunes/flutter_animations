class Product {
  Product({
    required this.id,
    required this.title,
    required this.description,
    this.isExpanded = false,
  });

  int id;
  String title;
  String description;
  bool isExpanded;

  static List<Product> generateItems(int numberOfItems) {
    return List<Product>.generate(numberOfItems, (int index) {
      return Product(
        id: index + 1,
        title: 'Produto ${index + 1}',
        description: 'Está é a descrição do produto ${index + 1}',
      );
    });
  }
}
