import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String name;
  final double price;
  final String discription;
  final String image;
  const ProductCard(
      {super.key,
      required this.name,
      required this.price,
      required this.discription,
      required this.image});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        title: Text(widget.name),
        trailing: Text(widget.price.toString()),
        leading: Image.network(widget.image,fit: BoxFit.cover,width: 80,),
        subtitle: Text(widget.discription),
      ),
    );
  }
}
