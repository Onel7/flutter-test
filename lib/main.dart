import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Row _iconNom=Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.comment_bank_outlined,
            size: 45,
          ),
          Text("Comment",style: TextStyle(
            fontSize: 20,color: Colors.blue,
          ),)
        ],
      ),
      Column(
        children: [
          Icon(Icons.share,
            size: 45,),
          Text("Share",style: TextStyle(
            fontSize: 20,color: Colors.blue,
          ),
          )
        ],
      )
    ],
  );
  Widget titleSection=Container(
    padding: EdgeInsets.all(12),
    child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child:Text("Pizza facile",style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
                Text("Par David Silvera",style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15
                ),),
              ],
            ),
          ),
          IconButton(onPressed: null,
              icon: Icon(
                Icons.favorite,color: Colors.red,
              )
          ),
          Text("55",)

        ]
    ),
  );
  final Text _recettes= const Text(
    "Préchauffez le four à 180°C.Dans un grand saladier, mélangez 200 g de farine, 100 g de sucre et une pincée de sel.\nAjoutez 3 œufs et 100 g de beurre fondu, puis mélangez jusqu’à obtenir une pâte lisse et homogène.Incorporez 10 cl de lait progressivement tout en remuant.\nVersez la préparation dans un moule beurré et fariné.Enfournez pendant 30 à 35 minutes jusqu’à ce que le gâteau soit bien doré.Laissez refroidir avant de démouler et servez.",
    softWrap: true,

  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Mes recettes",style: TextStyle(
              color: Colors.black
          ),),
          backgroundColor: Colors.white54
      ),
      body: ListView(
          children: [
            Stack(
                children: [
                  Container(
                    width: 600,
                    height: 400,
                    child:Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: "https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg",
                    width: 600,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ]
            ),
            Column(
                children: [
                  titleSection ,
                  SizedBox(height: 12,),
                  _iconNom,
                  Container(
                      padding: EdgeInsets.all(30),
                      child: _recettes)

                ]
            ),
          ]
      ),
    );
  }
}


