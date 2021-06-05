class Product {
  final int id, price;
  final String title, category, image, subTitle, description;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.category,
    required this.image,
    required this.subTitle,
    required this.description,
  });

  // It create an Category from JSON
}

// Our Demo Product
List<Product> products =[
  Product(
    id: 1,
    price: 1600,
    title: "Wood Frame",
    image: "assets/images/chair_1.png",
    category: "Chair",
    subTitle: "Tieton Armchair",
    description: description,
  ),

  Product(
    id: 2,
    price: 2660,
    title: "Wood Frame",
    image: "assets/images/chair_2.png",
    category: "Chair",
    subTitle: "Tieton Armchair",
    description: description,
  ),

  Product(
    id: 3,
    price: 1600,
    title: "Wood Frame",
    image: "assets/images/chair_1.png",
    category: "Chair",
    subTitle: "Tieton Armchair",
    description: description,
  ),

  Product(
    id: 4,
    price: 1900,
    title: "Wood Frame",
    image: "assets/images/chair_1.png",
    category: "Chair",
    subTitle: "Tieton Armchair",
    description: description,
  ),
];

String description =
    "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.";