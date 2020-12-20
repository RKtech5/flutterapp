import 'package:flutter/material.dart';

class ProductsDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductsDetails(
      {this.product_detail_name,
      this.product_detail_old_price,
      this.product_detail_new_price,
      this.product_detail_picture});

  @override
  _ProductsDetailsState createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text(widget.product_detail_name),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              print("sdfsd");
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              print("sdfsd");
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                    color: Colors.white,
                    child: Image.asset(widget.product_detail_picture))),
          )
        ],
      ),
    );
  }
}
