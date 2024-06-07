import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class instagram extends StatefulWidget {
  const instagram({super.key});

  @override
  State<instagram> createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  List img =[
    'assets/aes1.jpeg',
    'assets/aes2.jpeg',
    'assets/aes3.jpeg',
    'assets/aes4.jpeg',
    'assets/aes5.jpeg',
    'assets/aes6.jpeg',
    'assets/aes1.jpeg',
    'assets/aes2.jpeg',
    'assets/aes3.jpeg',
    'assets/aes4.jpeg',
    'assets/aes5.jpeg',
    'assets/aes6.jpeg'


  ];


  List tex =[
    'Aes',
    'Dump',
    '💕',
    '🦋',
    'cool',
    'mine',
    'Aes',
    'Dump',
    '💕',
    '🦋',
    'cool',
    'mine'
  ];
  List img2 =[
  'assets/aes1.jpeg',
  'assets/aes2.jpeg',
  'assets/aes3.jpeg',
];
List img3 =[
  'assets/aes3.jpeg',
  'assets/aes4.jpeg',
  'assets/aes5.jpeg',
  'assets/aes6.jpeg'
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text('swetha',style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert_outlined,color: Colors.white,),
          )
        ],
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3, child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [ SliverAppBar(
                pinned: true,
              floating: false,
              expandedHeight: 400,
             toolbarHeight: 8,
              // collapsedHeight: ,
              //titleSpacing: 1,
              backgroundColor: Colors.black,
              forceElevated: innerBoxIsScrolled,
              flexibleSpace: FlexibleSpaceBar(
                // collapseMode: CollapseMode.pin,
                background:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/dp.jpeg'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Text('341',style: TextStyle(fontSize: 18,color: Colors.white),),
                              Text('posts',style: TextStyle(fontSize: 18,color: Colors.white),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Text('7.1M',style: TextStyle(fontSize: 18,color: Colors.white),),
                              Text('followers',style: TextStyle(fontSize: 18,color: Colors.white),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Text('15',style: TextStyle(fontSize: 18,color: Colors.white),),
                              Text('following',style: TextStyle(fontSize: 18,color: Colors.white),)
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Fun,Fashion,Fantasy',style: TextStyle(color: Colors.white,fontSize: 15),),
                          Text('Digital Creator',style: TextStyle(fontSize: 15,color: Colors.white),),
                          Text('CBE',style: TextStyle(color: Colors.white,fontSize: 15),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Text('Follow',style: TextStyle(color: Colors.white,fontSize: 20),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(child: Text('Message',style: TextStyle(color: Colors.white,fontSize: 20),)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                              height: 40,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Icon(Icons.person_add),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: img.length,
                          itemBuilder: (BuildContext con, index)
                          {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                          image: AssetImage(img[index]),fit: BoxFit.fill
                                      ),shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                   Text(tex[index],style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),bottom:
                TabBar(
                    tabs:[
                      Tab(icon: Icon(Icons.grid_on,size: 30,color: Colors.white,),),
                      Tab(icon: Icon(Icons.video_collection,size: 30,color: Colors.white,),),
                      Tab(icon: Icon(Icons.person_pin_outlined,size: 30,color: Colors.white,),)
                    ] )
            ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
            children: [
              Container(
                height: 600,
                child: GridView.builder(
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // number of items in each row
                      mainAxisSpacing: 0.5, // spacing between rows
                      crossAxisSpacing: 0.5, // spacing between columns
                    ),
                    itemCount: img.length,
                    itemBuilder: (BuildContext con, index) {
                      return Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(img[index]),
                                  fit: BoxFit.fill,
                                )
                            ),
                          )
                        ],
                      );
                    }
                ),
              ),
              GridView.builder(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // number of items in each row
                    mainAxisSpacing: 1, // spacing between rows
                    crossAxisSpacing: 5, // spacing between columns
                  ),
                  itemCount: img2.length,
                  itemBuilder: (BuildContext con, index) {
                    return Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(img2[index]),
                                fit: BoxFit.fill,
                              )
                          ),
                        )
                      ],
                    );
                  }
              ),
              GridView.builder(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 1, // spacing between rows
                    crossAxisSpacing: 1, // spacing between columns
                  ),
                  itemCount: img3.length,
                  itemBuilder: (BuildContext con, index) {
                    return Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(img3[index]),
                                fit: BoxFit.fill,
                              )
                          ),
                        )
                      ],
                    );
                  }
              )
            ],
                  ),
          ),
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.white,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.white,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.videocam,color: Colors.white,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle,color: Colors.white,),label: '')
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
