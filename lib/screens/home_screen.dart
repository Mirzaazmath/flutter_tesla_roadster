import 'package:flutter/material.dart';

import '../utils/text_util.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset("assets/logo.png"),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.filter_list)),
        )],
        backgroundColor: Colors.black,
      ),body:Stack(
      children: [
        // Act as Bg Image
        Image.asset("assets/tesla.png",fit: BoxFit.cover,),
        // Rest of the code
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,


          children: [
            // Title and Text Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    TextUtil(
                      text: "Tesla",
                      size: 50,
                    ),

                    TextUtil(
                      text: "Roadster",
                      weight: true,
                      size: 70,
                    ),
                  ],
                ),
               const  SizedBox(width: 20,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextUtil(
                    size: 20,
                      color:const  Color(0xFF9B9B9B),
                      text: "The Sexiest car in the world,with record setting\nacceleration,range & performance"),
                )
              ],
            ),
           // Side number Bar
           Expanded(child: Column(

             crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               for(int i=0;i<=4;i++)...[Padding(
                 padding: const EdgeInsets.only(right: 20,bottom: 5),
                 child: SizedBox(
                   height: 30,
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                      const  Expanded(child: SizedBox()),
                       Text("0${i+1}",style: TextStyle(color:i==1? Colors.white:const Color(0xFF515151),fontSize: 20,fontWeight: FontWeight.bold),),
                       Container(
                         width: 2,
                         margin:const EdgeInsets.only(left: 10),

                         decoration:  BoxDecoration(

                           color: i==1?const Color(0xFFED412B):Colors.transparent,
                           boxShadow: [
                             BoxShadow(
                               color:i==1?const Color(0xFFED412B):Colors.transparent,
                               blurRadius:10,
                               offset: Offset(0, 3),
                               spreadRadius: 0,
                             )
                           ],
                         ),


                       ),

                      // TextUtil(text: "0${i+1}",size: 20,)
                     ],
                   ),
                 ),
               )]
             ],
             
           )),
            // footer section
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextUtil(
                      text: "Interior",
                      size: 22,
                    ),
                    const  SizedBox(height: 10,),
                    Stack(
                      children: [
                        Image.asset("assets/interior.png"),
                        Positioned(
                          right: 10,
                          bottom: 10,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration:const  BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFED412B),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFED412B),
                                  blurRadius: 60,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child:const  Icon(Icons.play_arrow,size: 30,color: Colors.white,),

                          ),
                        )
                      ],
                    )


                  ],
                ),
               const  SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextUtil(
                        text: "Specs",
                        size: 22,
                      ),
                    SizedBox(
                      height: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextUtil(
                                text: "1.9s",
                                size: 28,
                              ),
                              TextUtil(text: "0-60mph",  color:const  Color(0xFF9B9B9B),size: 15,),
                              Container(
                                margin:const  EdgeInsets.only(top: 10),
                                width: 100,
                                height: 5,
                                decoration:const  BoxDecoration(

                                  color: Color(0xFFED412B),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFED412B),
                                      blurRadius: 60,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),

                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextUtil(
                                text: "250mph",
                                size: 28,
                              ),
                              TextUtil(text: "Top Speed",  color:const  Color(0xFF9B9B9B),size: 15,)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextUtil(
                                text: "620mi",
                                size: 28,
                              ),
                              TextUtil(text: "Range",  color:const  Color(0xFF9B9B9B),size: 15,)
                            ],
                          )
                        ],
                      ),
                    ),





                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    width: 200,
                    height: 50,
                    decoration:  BoxDecoration(

                      color:const  Color(0xFFED412B),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const[
                        BoxShadow(
                          color: Color(0xFFED412B),
                          blurRadius: 5,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                    child:TextUtil(text: "Reserve Now",size: 20,)

                  ),
                )

              ],
            ),

          ],
        )
      ],
    ),
    );
  }
}
