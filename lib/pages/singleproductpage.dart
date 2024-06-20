import 'package:flutter/material.dart';
import 'package:flutter_go_router/models/product_model.dart';

class SingleProductPage extends StatefulWidget {
  final Product product;
  const SingleProductPage({super.key, required this.product});

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(widget.product.imageUrl,fit: BoxFit.cover,width: 200,),
            const SizedBox(height: 20,),
            Text(widget.product.description,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
            Text(widget.product.price.toString(),style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}
