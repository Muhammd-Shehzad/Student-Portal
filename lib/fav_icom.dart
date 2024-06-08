import 'package:flutter/material.dart';

class favIcon extends StatefulWidget {
  const favIcon({super.key});

  @override
  State<favIcon> createState() => _favIconState();
}

bool isFav = false;

class _favIconState extends State<favIcon> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () => setState(() {
          isFav = !isFav;
        }),
        child: Container(
          margin: EdgeInsets.all(1.5),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.black)),
          child: Icon(
            Icons.favorite,
            size: 20,
            color: isFav ? Colors.red : Colors.grey,
          ),
        ),
      ),
    );
  }
}
