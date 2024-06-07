import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';

class amazon extends StatefulWidget {
  const amazon({super.key});
  @override
  State<amazon> createState() => _amazonState();
}
List<String> list =[
  "1",
  "2",
  "3",
  "4"
];

class _amazonState extends State<amazon> {
String? dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Color(0xff84d8e3),Color(0xff92e0da),Color(0xffa4e7cd)],
            )
          ),
        ),
        backgroundColor: Colors.cyan.shade200,
        leading: Icon(Icons.arrow_back),
        title: Container(
          height: 45,

          child: TextFormField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                hintText: "Kurta set for Womens",
                suffixIcon: Icon(Icons.center_focus_strong_outlined)
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Visit the The Souled Store ",style: TextStyle(fontSize: 15,color: Colors.blue),),
          SizedBox(
            width: 90,
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 17,
            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },

          ),
                  Text('88')
            ]
              ),
              Text("Janasya Womens's peach Georgette Thread Work  kurta with Sharara",style: TextStyle(fontSize: 15,),),
              Stack(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,),
                    itemCount:1,
                    itemBuilder: (BuildContext context, int index, int realIndex) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/kurta.jpeg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                  Positioned(child: Icon(
                    Icons.share),top: 10,
                    left: 370,
                  ),
                  Positioned(child: Icon(Icons.favorite_border),bottom: 10,
                  right: 370,)
                ],

              ),
              Center(child: DotsIndicator(dotsCount: 3)),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Colour :",style: TextStyle(fontSize: 17),),
                  ),
                  Text('Green',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Size :',style: TextStyle(fontSize: 16),),
                  ),
                  Text('M',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),child: Center(child: Text('XS',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),child: Center(child: Text('S',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),child: Center(child: Text('M',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),child: Center(child: Text('XL',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Size guide",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                  child: Text('Great Summer Sale',style: TextStyle(fontSize: 16,color: Colors.white),),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('-43%',style: TextStyle(fontSize: 30,color: Colors.red),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('₹'),
                  ),
                  Text('2,279',style: TextStyle(fontSize: 30),),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('EMI from ₹11.No Cost EMI available.EMI options inclusive of all taxes',style: TextStyle(fontSize: 18),),
                  )),
                ],
              ),
              Divider(),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Total:',style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('₹2,267',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                 )
               ],
             ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('FREE delivery',style: TextStyle(color: Colors.blueGrey),),
                  ),
                  Text('Tuesday,7 May.',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('Order within '),
                  Text('23 hrs 26mins.',style: TextStyle(color: Colors.green),),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Details',style: TextStyle(color: Colors.blueGrey),),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_on_outlined),
                  ),
                  Text('Deleivering go to Chennai 600010 - Update location',style: TextStyle(color: Colors.blueGrey),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Only 1 left in Stock.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 14,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 3,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.yellow.shade600
                    ),child: Center(child: Text('Add to Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),color: Colors.orange.shade600
                  ),child: Center(child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.lock_sharp),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Secure transaction',style: TextStyle(color: Colors.blueGrey,fontSize: 18),),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Delivered by'),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text("Amazon",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Sold by'),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text("Globus Stores PVT LTD",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Details",style: TextStyle(color: Colors.blueGrey),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Add to Wish List",style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
              )




            ],
          ),
        ),
      ),
    );
  }
}













//const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

