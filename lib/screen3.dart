import 'package:flutter/material.dart';
import 'package:grid_view_builder/fav_icom.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Image.asset(
                  'assets/con1.png',
                  height: 100,
                  width: 200,
                ),
              ),
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Congratulation MY Online \n                    Shop',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child:
                        Align(alignment: Alignment.topRight, child: favIcon()),
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/buy.png',
              height: 350,
              width: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.pink,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
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
// 