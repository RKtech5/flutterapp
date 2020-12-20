import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// my import my file
import 'package:Shopping_app/componets/horizontallistview.dart';
import 'package:Shopping_app/componets/products.dart';

void main() {
  runApp(MaterialApp(
      title: 'RED ROSE', debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("RED ROSE'S"),
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
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text("UserName : Gopi Rk"),
              accountEmail: Text("Mail Id : Gopigopu00@gmail.com"),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              )),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),

            //body
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home, color: Colors.red),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("My Account"),
                  leading: Icon(Icons.person, color: Colors.red),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("My Order"),
                  leading: Icon(Icons.shopping_basket, color: Colors.red),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Categoies"),
                  leading: Icon(Icons.dashboard, color: Colors.red),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Favourites"),
                  leading: Icon(Icons.favorite, color: Colors.red),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings, color: Colors.blue),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help, color: Colors.green),
                )),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //images sliders
          SizedBox(
            height: 200.0,
            width: 350.0,
            child: Carousel(
              images: [
                ExactAssetImage("images/m2.jpg"),
                ExactAssetImage("images/m1.jpeg"),
                ExactAssetImage("images/w1.jpeg"),
                ExactAssetImage("images/w3.jpeg"),
                ExactAssetImage("images/w4.jpeg"),
              ],
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.lightGreenAccent,
              indicatorBgPadding: 5.0,
            ),
          ),
          //categories
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          // horizontal list view
          Horizontalview(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Recent Products',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          //Grid
          SingleChildScrollView(
            child: Container(
              height: 320.0,
              child: Products(),
            ),
          ),
        ],
      ),
    );
  }
}
