import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class asd extends StatelessWidget {
  const asd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        GestureDetector(
          onTap: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const poi()),
            );
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/dog.png"),
                fit: BoxFit.fill,
              )
            ),
          ),
        ),

        ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const poi()),
              );
        }, child: Text("ok"))
      ],
    );
  }
}


class poi extends StatelessWidget {
  const poi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
    );
  }
}


// Row(
//   children: [
//     SizedBox(
//       width: 20,
//     ),
//
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '7';
//       }, child: Text('7')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '8';
//       }, child: Text('8')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '9';
//       }, child: Text('9')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '0';
//       }, child: Text('0')),
//     ),
//   ],
// ),
// Row(
//   children: [
//     SizedBox(
//       width: 20,
//     ),
//
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '6';
//       }, child: Text('6')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '5';
//       }, child: Text('5')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '4';
//       }, child: Text('4')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '2';
//       }, child: Text('2')),
//     ),
//   ],
// ),
// Row(
//   children: [
//     SizedBox(
//       width: 20,
//     ),
//
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '1';
//       }, child: Text('1')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '#';
//       }, child: Text('#')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '*';
//       }, child: Text('*')),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(onPressed: (){
//         ss.text = '0';
//       }, child: Text('0')),
//     ),
//   ],
// ),


