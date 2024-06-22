import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grid_view_builder/screen3.dart';

class Screen2 extends StatefulWidget {
  final name;
  final price;
  final image;

  const Screen2(
      {super.key,
      required this.name,
      required this.price,
      required this.image});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List sized = ['32', '33', '34', '35'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
        ),
        title: Center(
          child: Text(
            widget.name,
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 65, 51, 51),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Image.asset(
                      widget.image,
                      height: 300,
                      width: 300,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  'size',
                  style: TextStyle(
                      color: Colors.pink.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        sized[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen3(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 209, 33, 21),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'BUY NEW',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
