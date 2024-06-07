

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/bot%20navigation.dart';
import 'package:untitled/login2.dart';


class rs extends StatefulWidget {
  const rs({super.key});

  @override
  State<rs> createState() => _rsState();
}

class _rsState extends State<rs> {
  TextEditingController ss =TextEditingController();
  TextEditingController vv =TextEditingController();
  TextEditingController rr =TextEditingController();
  final _validate= GlobalKey<FormState>();

  bool value = false;
  final RegExp emailRegex = RegExp(r'^[a-z0-9]+@[a-z]+\.[a-z]+$');

  final RegExp phoneRegex = RegExp(r'^[0-9]+$');



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Validation'),


        ),
        body: SafeArea(
          child: Column(
            children: [
              Form(
                  key:_validate,
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        child: TextFormField(
                          controller: ss,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                            hintText: "Enter the email",
                          ),
                          onChanged: (a)
                          {
                            setState(() {
                              if(a == null && a.isNotEmpty){
                                value = true;
                              }
                              else{
                                value = false;
                              }


                            });
                          },

                          validator: (input) {
                            if ( input!.isEmpty)
                            {

                              return 'Please enter the email';
                            }
                            if (!emailRegex.hasMatch(input))
                            {
                              return 'Please enter the valid email';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        width: 400,
                        child: TextFormField(
                          controller: vv,
                          decoration: InputDecoration(
                            icon: Icon(Icons.phone),
                            border: OutlineInputBorder(),
                            hintText: "Enter the phone number ",
                          ),
                          onChanged: (b)
                          {
                            setState(() {
                              if(b == null && b.isNotEmpty){
                                value = true;
                              }
                              else{
                                value = false;
                              }


                            });
                          },

                          validator: (input) {
                            if ( input!.isEmpty )
                               //
                            {
                              return 'Please enter the phonenumber';
                            }
                            if (!phoneRegex.hasMatch(input))
                            {
                              return 'Please enter the valid phone number';
                            }
                            // return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 400,
                        child: TextFormField(
                          controller: rr,
                          decoration: InputDecoration(
                            icon: Icon(Icons.password),
                            border: OutlineInputBorder(),
                            hintText: "Enter the password ",
                          ),
                          onChanged: (c)
                          {
                            setState(() {
                              if( c.isNotEmpty){
                                value = true;
                              }
                              else{
                                value = false;
                              }


                            });
                          },

                          validator: (password) {
                            if ( password!.isEmpty||RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                .hasMatch(password)) {
                              return 'Please enter the password';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Visibility(
                        visible: value,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_validate.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing Data')),
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>abc()),
                              );


                            }
                            else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Please enter correct data')),
                              );
                            }
                          },
                          child: const Text('Submit'),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        )
    );
  }
}



