import 'package:flutter/material.dart';

class lmn extends StatefulWidget {
  const lmn({super.key});

  @override
  State<lmn> createState() => _lmnState();
}

class _lmnState extends State<lmn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text('All Reports',style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),
          Divider(),
          Text('GT Software College',style: TextStyle(fontSize: 20),),
          Card(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Report 1'),
              trailing: Icon(Icons.forward),
            ),

          ),
          Card(
            color: Colors.yellow,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Report 2'),
              trailing: Icon(Icons.forward),
            ),

          ),
          Card(
            color: Colors.cyan,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Report 3'),
              trailing: Icon(Icons.forward),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text('OK')),
          ),
          Text("Thank you",style: TextStyle(fontSize: 30),),

          Container(
            height: 500,
            width: 500,
            color: Colors.cyan,
          ),
          Container(
            height: 500,
            width: 500,
            color: Colors.cyan,
          )



        ],
      ),
    );
  }
}
