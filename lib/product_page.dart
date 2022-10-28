import 'package:lavinia_moda/product_detail.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  //informações de cada card
                  _buildCard(
                      'Top LIVE',
                      'R\$ 119,90',
                      'Top faixa com bojo removível e alças finas de baixa sustentação, contém, bojo removível é indicado para daywear. Estampa LIVE! exclusiva com proteção UV50',
                      'assets/conjuntolive.jpg',
                      false,
                      context),
                  _buildCard(
                      'Legging LIVE',
                      'R\$ 250,00',
                      'Legging LIVE de média compressão de média compressão que valoriza a silhueta é indicado para performances esportivas e todos os biotipos. Estampa LIVE! signature',
                      'assets/calcalive.JPG',
                      false,
                      context),
                  _buildCard(
                      'Shorts Fit LIVE',
                      'R\$ 169,90',
                      'Shorts fit LIVE de média compressão que valoriza a silhueta, é indicado para performances esportivas e todos os biotipos. Estampa LIVE! signature',
                      'assets/shortlive.JPG',
                      false,
                      context),
                  _buildCard(
                      'Blusa Basic LIVE!',
                      'R\$ 139,90',
                      'Blusa slim. Fit ideal para daywear, modelo quick Dry com Estampa LIVE! Holographic',
                      'assets/camisalive.JPG',
                      false,
                      context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String description,
      String imgPath, bool isFavorite, context) {
    bool _isFavorited = isFavorite;
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  //clique do card para pagina de detalhes do produto
                  builder: (context) => ProductDetail(
                      assetPath: imgPath,
                      productPrice: price,
                      productName: name,
                      productDescription: description)));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isFavorited = !_isFavorited;
                                  });
                                },
                                child: _isFavorited
                                    ? Icon(Icons.favorite,
                                        color:
                                            Color.fromARGB(255, 148, 64, 204))
                                    : Icon(Icons.favorite_border,
                                        color:
                                            Color.fromARGB(255, 148, 64, 204))),
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  //configs dos cards
                  Text(price,
                      style: TextStyle(
                          color: Color.fromARGB(255, 148, 64, 204),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                          color: Color.fromARGB(255, 148, 64, 204),
                          height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.shopping_basket,
                                color: Color.fromARGB(255, 148, 64, 204),
                                size: 12.0),
                            Text('Mais informações',
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    color: Color.fromARGB(255, 148, 64, 204),
                                    fontSize: 12.0))
                          ]))
                ]))));
  }
}
