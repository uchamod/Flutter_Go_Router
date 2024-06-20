import 'package:flutter/material.dart';
import 'package:flutter_go_router/data/productdata.dart';
import 'package:flutter_go_router/router/routenames.dart';
import 'package:flutter_go_router/widgets/productcard.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is product page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //product list
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ProductData().productDataList.length,
              itemBuilder: (context, index) {
                final Product = ProductData().productDataList[index];
                //route to single product page
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushNamed(RouteNames.productdetails,extra: Product);
                  },
                  child: ProductCard(
                    name: Product.name,
                    discription: Product.description,
                    image: Product.imageUrl,
                    price: Product.price,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
