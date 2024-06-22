import 'package:flutter/material.dart';
import 'package:grid_view_builder/DetailsScreen.dart';
import 'package:grid_view_builder/fav_icom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List shirt = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/shirt.png',
    'assets/5.png',
  ];
  List Names = ['Adidas', 'Nicki', 'Guchi', 'j.', 'Puma'];
  List Price = ['\$20', '\$30', '\$40', '\$50', '\$60'];

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Center(
          child: Text(
            'T-Shirt Shop',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.pink.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1 / 1.5),
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    favIcon(),
                    Image.asset(
                      shirt[index],
                      height: 150,
                      width: 100,
                    ),
                    Text(
                      Names[index],
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      Price[index],
                      style: TextStyle(color: Colors.pink.withOpacity(1)),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen2(
                        name: Names[index],
                        price: Price[index],
                        image: shirt[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'BUY NOW',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//   Align favIcon() {
//     return
//   }
}
