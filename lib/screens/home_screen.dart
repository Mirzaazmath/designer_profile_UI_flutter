import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text("Dev_73arner",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 26),),
        actions: const [
          SizedBox(width: 20,),
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpeg"),
          ),SizedBox(width: 15,),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: TextFormField(


                decoration: InputDecoration(

                  contentPadding: EdgeInsets.zero,

                  hintText: "search..",
                  prefixIcon:const  Icon(CupertinoIcons.search,color: Colors.white,),
                  hintStyle:const  TextStyle(color: Colors.white),
                  fillColor: Colors.white,

                  border:     OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                          color:Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:const  BorderSide(color:
                      Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:const   BorderSide(color:
                    Colors.grey),
                  ),
                ),
              ),
            ),
           const  SizedBox(height: 30,),


            //////// This is for Dribble /////////
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen()));
              },
              child: Container(
                height: 250,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 30),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient:const  LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xfffd9772),
                      Color(0xffd62b69),
                      Color(0xff8b1a56),
                    ],
                  ),

                  boxShadow: const [
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
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text("#1",style: TextStyle(color: Colors.black.withOpacity(0.05),fontSize: 80,fontWeight: FontWeight.w900),),
                    ),

                    Column(
                      children: [
                        SizedBox(height: 110,
                        width: 110,
                        child: Image.asset("assets/logo1.png"),),
                        const Text("dribbble",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 26,color: Colors.white),),
                        const Text("@dev_73arner",style: TextStyle(fontSize: 12,color: Colors.white70),),
                       const  Spacer(),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70),

                            borderRadius: BorderRadius.circular(20)
                          ),
                          padding:const  EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: '123 ',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                  children:  <TextSpan>[
                                    TextSpan(text: 'shots', style: TextStyle(fontWeight: FontWeight.normal)),

                                  ],
                                ),
                              ),
                              const Text("add new",style: TextStyle(fontWeight:FontWeight.bold,
                                  color: Colors.white),),
                            ],
                          ),
                        )


                      ],

                    ),
                  ],
                ),
              ),
            ),
            //////// This is for Behance /////////
            Container(
              height: 250,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 30),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient:const  LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff38c9fc),
                    Color(0xff2073eb),
                    Color(0xff173ebd),
                  ],
                ),

                boxShadow: const [
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
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Text("#2",style: TextStyle(color: Colors.black.withOpacity(0.05),fontSize: 80,fontWeight: FontWeight.w900),),
                  ),

                  Column(
                    children: [
                      SizedBox(height: 110,
                        width: 110,
                        child: Image.asset("assets/logo2.png"),),
                      const Text("behance",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 26,color: Colors.white),),
                      const Text("@dev_73arner",style: TextStyle(fontSize: 12,color: Colors.white70),),
                      const  Spacer(),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white70),

                            borderRadius: BorderRadius.circular(20)
                        ),
                        padding:const  EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: '203 ',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                children:  <TextSpan>[
                                  TextSpan(text: 'posts', style: TextStyle(fontWeight: FontWeight.normal)),

                                ],
                              ),
                            ),
                            const Text("add new",style: TextStyle(fontWeight:FontWeight.bold,
                                color: Colors.white),),
                          ],
                        ),
                      )


                    ],

                  ),
                ],
              ),
            ),

          ],

        ),
      ),

    );
  }
}
