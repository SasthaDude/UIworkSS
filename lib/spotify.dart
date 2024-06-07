import 'package:flutter/material.dart';

class spotify2 extends StatefulWidget {
  const spotify2({super.key});

  @override
  State<spotify2> createState() => _spotify2State();
}

class _spotify2State extends State<spotify2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(

        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
            {
              return  [
                SliverAppBar(
                  leading: Icon(Icons.arrow_back,color: Colors.white,),
                  pinned:true,
                  expandedHeight: 450,
                  titleSpacing: 15,
                  backgroundColor: Colors.black,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [

                          Color(0xff3d1515),
                          Colors.black
                        ],
                        begin: Alignment.topCenter,
                        end:Alignment.bottomCenter,
                      )
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: FlexibleSpaceBar(
                          centerTitle: false,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Pop mix',style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          background: Column(
                            children: [
                              SizedBox(height: 50,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      height: 40,
                                      width: 280,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.search,color: Colors.white,),
                                          hintText: "Find in playlist",
                                          hintStyle: TextStyle(color: Colors.white),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5),
                                            borderSide: BorderSide(color:Colors.white),
                                          ),

                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.white,
                                              )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width:5),
                                  Container(
                                    width: 50,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(5),


                                    ),
                                    child: Center(
                                      child: Text("Sort",style: TextStyle(color: Colors.white,
                                        fontSize: 20,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 210,
                                width: 220,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/pop.jpeg"),
                                    )
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Stephen Sanchez,Taylor Swift.',style: TextStyle(
                                            color: Colors.green,fontSize: 16
                                        ),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/spotlogo.png'),

                                          ),
                                          border: Border.all(),
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                  ),
                                  Text('Spotify',style: TextStyle(fontSize: 15,
                                      color: Colors.white,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text('2h 6min',style: TextStyle(
                                        color: Colors.white
                                    ),),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )];
            }, body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite_border_outlined,size: 28,color:Colors.grey,),
                      ),
                      SizedBox(width:25 ,),
                      Icon(Icons.download_for_offline_outlined,size: 28,color:Colors.grey,),
                      SizedBox(width:25 ,),
                      Icon(Icons.more_vert_outlined,size: 28,color:Colors.grey,),
                      SizedBox(width:100 ,),
                      Icon(Icons.shuffle,size: 28,color:Colors.green,),
                      SizedBox(width:15,),
                      Container(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          child: Icon(Icons.play_circle_fill_outlined,color: Colors.black87,),
                        ),
                      ),
                    ],

                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: [
                      //     Color(0xff240f0f),
                      //     Color(0xff3d1515)
                      //   ],
                      //   begin: Alignment.topCenter,
                      //   end:Alignment.bottomCenter,
                      // )
                  ),
                  child: ListView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=>Card(
                      color: Colors.black,
                      child: SingleChildScrollView(
                        child: ListTile(
                          leading:SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/found.jpeg'),
                          ),
                          title: Text("Until I Found You",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),

                          ),
                          subtitle: Text("Stephen Sanchez,Em Beihold",style:TextStyle(color: Colors.white,),),

                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),


        )
        ),
      )
    );
  }
}
