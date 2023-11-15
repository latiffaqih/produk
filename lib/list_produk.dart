import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Product List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Product List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> products = [
    {
      "name": "Baju 1",
      "price": 50000,
    },
    {
      "name": "Baju 2",
      "price": 55000,
    },
    {
      "name": "Baju 3",
      "price": 60000,
    },
    {
      "name": "Baju 4",
      "price": 65000,
    },
    {
      "name": "Baju 5",
      "price": 70000,
    },
    {
      "name": "Baju 6",
      "price": 75000,
    },
    {
      "name": "Baju 7",
      "price": 80000,
    },
    {
      "name": "Baju 8",
      "price": 85000,
    },
    {
      "name": "Baju 9",
      "price": 90000,
    },
    {
      "name": "Baju 10",
      "price": 95000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(products[index]['image']),
            title: Text(products[index]['name']),
            subtitle: Text('Rp${products[index]['price']}'),
            trailing: Icon(Icons.shopping_cart),
          );
        },
      ),
    );
  }
}
