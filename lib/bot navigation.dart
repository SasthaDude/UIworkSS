import 'package:flutter/material.dart';
import 'package:untitled/amaz.dart';
import 'package:untitled/amaz1.dart';
import 'package:untitled/insta.dart';

import 'package:untitled/spotify.dart';

class abc extends StatefulWidget {
  const abc({super.key});

  @override
  State<abc> createState() => _abcState();
}

class _abcState extends State<abc> {

  int index = 0;


  final screens = [
    jkl(),
    amazon(),
    spotify2(),
    instagram()


  ];

  void tap(_index)
  {
    setState(() {
      index = _index;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.black,),label: "Profile"),
        ],
        currentIndex: index,
        onTap: tap,

      )
    );
  }
}

