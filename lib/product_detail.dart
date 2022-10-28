import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final assetPath, productPrice, productName, productDescription;

  ProductDetail(
      {this.assetPath,
      this.productPrice,
      this.productName,
      this.productDescription});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          //titulo da app bar
          title: Text('LV Moda Fitness',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                  color: Color(0xFF545D68))),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(children: [
          SizedBox(height: 15.0),
          Padding(
            //nome titulo maior
            padding: EdgeInsets.only(left: 20.0),
            child: Text(productName,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 148, 64, 204))),
          ),
          SizedBox(height: 15.0),
          Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
                  height: 150.0, width: 100.0, fit: BoxFit.contain)),
          SizedBox(height: 20.0),
          Center(
            //preco do produto
            child: Text(productPrice,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 148, 64, 204))),
          ),
          SizedBox(height: 10.0),
          Center(
            //nome do produto
            child: Text(productName,
                style: TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Varela',
                    fontSize: 24.0)),
          ),
          SizedBox(height: 20.0),
          Center(
            //descricao do produto
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              child: Text(productDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))),
            ),
          ),
          SizedBox(height: 20.0),
          //botao comprar
          Center(
              child: Container(
                  width: MediaQuery.of(context).size.width - 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color.fromARGB(255, 148, 64, 204)),
                  child: Center(
                      child: Text(
                    'Comprar',
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))))
        ]));
  }
}
