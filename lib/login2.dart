import 'package:flutter/material.dart';
import 'package:untitled/bot%20navigation.dart';

class bnm extends StatefulWidget {
  const bnm({super.key});

  @override
  State<bnm> createState() => _bnmState();
}

class _bnmState extends State<bnm> {
  TextEditingController val =TextEditingController();
  TextEditingController wer =TextEditingController();
  final _validate= GlobalKey<FormState>();

  bool value = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _validate,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: val,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  hintText: "Enter the name",
                ),
                onChanged: (as)
                {
                  setState(() {
                    if(as == null && as.isNotEmpty){
                      value = true;
                    }
                    else{
                      value = false;
                    }


                  });
                },

                validator: (as) {
                  if(as == null || as.isNotEmpty)
                  {
                    return "enter the valid name";
                  }
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: wer,
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  hintText:"Enter the password",
                ),
                onChanged: (b){
                  setState(() {
                    if(b.isNotEmpty){
                      value = true;
                    }
                    else{
                      value = false;
                    }

                  });
                },
                validator: (b) {
                  if(b == null || b.isNotEmpty)
                  {
                    return "enter the valid name";
                  }
                },

              ),
            ),
            Visibility(
              visible : value,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const abc()),
                    );
                  }, child: Text('Submit')),
            )



          ],
        ),
      ),
    );
  }
}