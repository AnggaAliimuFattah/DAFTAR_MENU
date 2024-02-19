import 'package:flutter/material.dart';
import 'package:flutter_grocery_ui/data.dart';
import 'package:flutter_grocery_ui/item_widget.dart';
import 'package:flutter_grocery_ui/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Jurang Geprek',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   LoginPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 8,
      backgroundColor: Colors.green,
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: const Text(
        'Menu Jurang Geprek',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        Row(
          children: [
            const Icon(
              Icons.search,
              color: Colors.black,
              ),
              Stack(
                children : [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  ),
                Positioned(
                  top : 0,
                  right: 3,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape : BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                    ),
                  ),
                ),
                ],
              
              ),  
          ],
        ),
      ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.5,
          ),
          itemBuilder:  (context, index){
            return ItemWidget(product: allData[index]);
          },
          itemCount: allData.length,
          
        ),
      ),
    );
  }
}