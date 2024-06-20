import 'package:flutter_go_router/models/product_model.dart';

class ProductData {
  List<Product> productDataList = [
    Product(
        id: "1",
        name: "watch",
        description: "men wrist watch",
        price: 50,
        imageUrl: "https://appleme.lk/wp-content/uploads/2022/01/N76-Smart-Watch.jpg"),
    Product(
        id: "2",
        name: "bangle",
        description: "women hand bangle",
        price: 80,
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb0gZ6RV91oCMz81FuWDUmPmHPevFYaikOog&s"),
    Product(
        id: "3",
        name: "neckless",
        description: "women gold neckless",
        price: 100,
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm_9lhk6TycCl7MZKFy9432NIxHkW8AlQ5GQ&s"),
    Product(
        id: "4",
        name: "shoes",
        description: "kid shoes",
        price: 30,
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm_9lhk6TycCl7MZKFy9432NIxHkW8AlQ5GQ&s"),
  ];
}
