import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {

  List<String> shoppingItem=[
    'Apple',
    'Bananas',
    'Bread',
    'Milk',
    'Eggs'
  ];
  MySnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        backgroundColor: Colors.blue,
        elevation: 10,
        centerTitle:true,
        actions: [
          IconButton(
              onPressed: (){
                MySnackbar("Cart is empty", context);
              },
              icon: Icon(Icons.shopping_cart)),
        ],

      ),
      body: ListView.builder(

        itemCount:shoppingItem.length ,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(shoppingItem[index]),
            leading: Icon(Icons.shopping_basket),

          );
        },
      ),


    );


  }
}
