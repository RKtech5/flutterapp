import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "1120",
      "price": "1085",
    },
    {
      "name": "blazers",
      "picture": "images/products/blazer2.jpeg",
      "old_price": "1001",
      "price": "999",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_name: product_list[index]["name"],
          prod_pricture: product_list[index]["picture"],
          prod_old_price: product_list[index]["old_price"],
          prod_price: product_list[index]["price"],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('text'));
  }
}
