import 'package:flutter/material.dart';

import '../data/dribble_data.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),

      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,

          gradient:  LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfffd9772),
              Color(0xffd62b69),
              Color(0xff8b1a56),
            ],
          ),

          boxShadow:  [
            BoxShadow(
                color: Colors.black38,
                offset: Offset(10,10),
                blurRadius: 10

            ),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(-10,-10),
                blurRadius: 10

            )
          ],

        ),
        child: const Icon(Icons.add,size: 40,color: Colors.white,),

      ),
      body: Column(
        children: [
          Container
            (
            height: 300,
            width: double.infinity,

            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              gradient:  LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfffd9772),
                  Color(0xffd62b69),
                  Color(0xff8b1a56),
                ],
              ),

              boxShadow:  [
                BoxShadow(
                    color: Colors.black38,
                    offset: Offset(10,10),
                    blurRadius: 10

                ),
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-10,-10),
                    blurRadius: 10

                )
              ],

            ),
            child: Column(

              children: [
               const  SizedBox(height: 60,),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text("#1",style: TextStyle(color: Colors.black.withOpacity(0.05),fontSize: 80,fontWeight: FontWeight.w900),),
                      ),
                    ),

                    Column(
                      children: [
                        SizedBox(
                          height: 110,
                          width: 110,
                          child: Image.asset("assets/logo1.png"),),
                        const Text("dribbble",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 26,color: Colors.white),),


                    const   Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      const   SizedBox(height: 10,),
                       const  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text("123",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                Text("shots",style: TextStyle(color: Colors.white54,),)
                              ],
                            ),
                            Column(
                              children: [
                                Text("625k",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                Text("likes",style: TextStyle(color: Colors.white54,),)
                              ],
                            ),
                            Column(
                              children: [
                                Text("129k",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                Text("fans",style: TextStyle(color: Colors.white54,),)
                              ],
                            )

                          ],
                        )


                      ],

                    ),
                  ],
                ),
              ],
            ),
          ),


          Expanded(
            child: Container(
              margin:const  EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                
                shrinkWrap: true,
                  itemCount: postList.length,
                  itemBuilder: (context,index){
                  return Padding(padding:const  EdgeInsets.symmetric(vertical: 15),child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 110,
                        decoration: BoxDecoration(
                            boxShadow: const  [
                              BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(5,5),
                                  blurRadius: 10

                              ),
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(-5,-5),
                                  blurRadius: 10

                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(postList[index].imageUrl),fit: BoxFit.fill
                            )
                        ),
                      ),
                     const SizedBox(width: 15,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(postList[index].title,style:const TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.bold),),
                           const  SizedBox(height: 10,),
                            Text(postList[index].date,style:const TextStyle(color: Colors.grey,),),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(postList[index].likes,style:const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          const  SizedBox(height: 10,),
                        const  Icon(Icons.trending_up,color: Colors.grey,)
                        ],
                      ),

                    ],

                  ),);}),
            ),
          )
        ],
      ),
    );
  }
}
