import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),
    );
  }
}
 class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});

   @override
   State<MyHomePage> createState() => _MyHomePageState();
 }

 class _MyHomePageState extends State<MyHomePage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.orangeAccent,
         centerTitle:true,
          leading: IconButton(onPressed: null, icon: Icon(Icons.settings,color: Colors.black,size: 30,)),
          title: Text('O\'nelkey coders',style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(onPressed: null,
                icon:Icon(
                  Icons.person,color: Colors.black,
                  size: 30,
                )
            )
          ],
       ),
       body:Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Text('O\'nelbring Key Coder',style: TextStyle(fontSize: 25,))
         ],
       ),
     );
   }
 }
