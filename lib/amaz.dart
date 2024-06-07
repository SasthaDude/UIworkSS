import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/amaz1.dart';

class jkl extends StatefulWidget {
  const jkl({super.key});

  @override
  State<jkl> createState() => _jklState();
}

class _jklState extends State<jkl> {


 List  image =[
   "assets/bazzar.jpeg",
   "assets/model.jpeg",
   "assets/fas.jpeg",
   "assets/mini.jpeg",
   "assets/veg.jpeg",
   "assets/elec.jpeg",
   "assets/model2.jpeg",
   "assets/book.jpeg",
   "assets/appli.jpeg",
   "assets/essen.jpeg"
 ];

 List  image33 =[
   "assets/bazzar.jpeg",
   "assets/model.jpeg",
   "assets/fas.jpeg",
   "assets/mini.jpeg",
   "assets/veg.jpeg",
   "assets/elec.jpeg",
   "assets/model2.jpeg",
   "assets/book.jpeg",
   "assets/appli.jpeg",
   "assets/essen.jpeg"
 ];

 List text= [
   "Bazzar",
   "Mobiles",
   "Fashion",
   "mini Tv",
   "Fresh",
   "Electronics",
   "Beauty",
   "Books",
   "Appliances",
   "Essentials"

 ];

 List text22 =[
   "Up to 65% off",
   "Up to 60% off| Mobiles",
   "Up to 75% off| Beauty",
   "Up to 88% off| amazon "
 ];
 List image22 =[
   "assets/bazzar.jpeg",
   "assets/model.jpeg",
 ];










  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
          backgroundColor: Colors.cyan.shade200,
          title :Container(
            height: 49,
            width: 400,
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search,size: 30,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: "Search Amazon.in",
                  suffixIcon: Icon(Icons.center_focus_strong_outlined,color: Colors.grey.shade200,)
              ),
            ),
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.cyan.shade100,
                //border: Border.all(),
              ),
              child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                Text("Delivering to Chennai 60042 - Update location"),
              ],
            ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (BuildContext con, index)
                  {
                    return Padding(
                      padding: const EdgeInsets.only(left:10,top: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage(image[index]),fit: BoxFit.fill
                              ),shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(text[index],),
                        ],
                      ),
                    );
                  }
              ),
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
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
              itemCount: image33.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image33[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (BuildContext con, index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage(image[index]),fit: BoxFit.fill
                              ),
                            ),
        
                          ),
        
                        ],
                      ),
                    );
                  }
              ),
            ),

            Text("Get Sale Ready | TVs, Appliances & more",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          //
        Container(
          height: 410,
          child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2, // number of items in each row
                mainAxisSpacing: 20.0, // spacing between rows
                crossAxisSpacing: 20.0, // spacing between columns
             ),
              itemCount: 4,
              itemBuilder: (BuildContext con, index)
              {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
        height: 140,
        width: 130,
        decoration: BoxDecoration(
          border: Border.all(),
        image: DecorationImage(
        image: AssetImage(image[index]),fit: BoxFit.fill,
        )
        ),
        ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(text22[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                            ),
                          ],
                        ),
                );
              }
              ),
        ),


          ],
        ),
      ),
     // backgroundColor: Colors.yellow.shade50,

    );
  }
}
        

