import 'package:flutter/material.dart';
import 'package:fruit_app_ui/utils/text_utils.dart';

import 'detail_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var T=Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor:T.scaffoldBackgroundColor,
        leading: Container(

          height: 40,
          width: 40,
          margin:const  EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: T.primaryColor
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextUtil(text: "Hi Dev_73arner",size: 12,),
            TextUtil(text: "Let's get some item!",)
          ],
        ),
        actions: [IconButton(onPressed: (){}, icon:const  Icon(Icons.shopping_cart_outlined))],

      ),
      floatingActionButton: Container(
        height: 70,
        margin:const EdgeInsets.only(left: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color:T.primaryColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.home_outlined,color: Colors.white,size: 30,)),
            IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border,color: Colors.white,size: 30,)),
            IconButton(onPressed: (){}, icon:const Icon(Icons.bookmark_outline,color: Colors.white,size: 30,)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.person_2_outlined,color: Colors.white,size: 30,))
          ],
        ) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Container(
                  height: 50,

                  padding: const EdgeInsets.symmetric(horizontal: 10),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:T.primaryColorLight
                  ),
                  child: TextFormField(
                    decoration:const  InputDecoration(
                      hintText: "Search items..",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none
                    ),
                  )
                ), ),
               const  SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 50,
                  margin:const  EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: T.primaryColor.withOpacity(0.2),
                            offset:const  Offset(5,5),
                            blurRadius: 10
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: T.primaryColor
                  ),
                  child: const Icon(Icons.tune,color: Colors.white,) ,
                ),

              ],
            ),
           const  SizedBox(height: 10,),
            TextUtil(text: "Popular Items",weight: true,size:18,),
            const  SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child:   GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen()));
                },
                child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(

                        boxShadow: [
                          BoxShadow(
                              color: T.primaryColor.withOpacity(0.2),
                              offset:const  Offset(5,5),
                              blurRadius: 10
                          ),
                        ],
                        borderRadius: BorderRadius.circular(24),
                        color:T.primaryColorLight
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(onPressed: (){}, icon:const  Icon(Icons.favorite_border)),
                                 const SizedBox(height: 70,),

                                  TextUtil(text: "Rambutan",weight: true,size: 15,),
                                  TextUtil(text: "Fruit",size: 10,color: Colors.grey,),
                                ],
                              ),
                              Center(child: Image.asset("assets/rambutan.png",height: 120,width: 100,fit: BoxFit.cover,)),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextUtil(text: "\$22.99",weight: true,size: 13,color: T.primaryColor,)),
                            ),
                            Container(
                              height: 47,
                              width: 41,
                              margin:const  EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(


                                  borderRadius:const  BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20) ),
                                  color: T.primaryColor
                              ),
                              child: const Icon(Icons.add,color: Colors.white,) ,
                            ),
                          ],
                        )




                      ],

                    )
                ),
              ),),
             const  SizedBox(width: 30,),
              Expanded(child:   Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(

                      boxShadow: [
                        BoxShadow(
                            color: T.primaryColor.withOpacity(0.2),
                            offset:const  Offset(5,5),
                            blurRadius: 10
                        ),
                      ],
                      borderRadius: BorderRadius.circular(24),
                      color:T.primaryColorLight
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(onPressed: (){}, icon:const  Icon(Icons.favorite_border)),
                                const SizedBox(height: 70,),

                                TextUtil(text: "Durain Monty",weight: true,size: 15,),
                                TextUtil(text: "Fruit",size: 10,color: Colors.grey,),
                              ],
                            ),
                            Column(
                              children: [
                               const  SizedBox(height: 30,),
                                Center(child: Image.asset("assets/monty.png",height: 80,width: 80,fit: BoxFit.fill,)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextUtil(text: "\$32.19",weight: true,size: 13,color: T.primaryColor,)),
                          ),
                          Container(
                            height: 47,
                            width: 41,
                            margin:const  EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(


                                borderRadius:const  BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20) ),
                                color: T.primaryColor
                            ),
                            child: const Icon(Icons.add,color: Colors.white,) ,
                          ),
                        ],
                      )




                    ],

                  )
              ),),
            ],
          ),
            const  SizedBox(height: 20,),
            TextUtil(text: "Recent shop",weight: true,size: 20,),
            const  SizedBox(height: 20,),
            Container(
                height: 100,
                width: double.infinity,
                padding:const  EdgeInsets.all(10),
                decoration: BoxDecoration(

                    boxShadow: [
                      BoxShadow(
                          color: T.primaryColor.withOpacity(0.2),
                          offset:const  Offset(5,5),
                          blurRadius: 10
                      ),
                    ],
                    borderRadius: BorderRadius.circular(24),
                    color:T.primaryColorLight
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Image.asset("assets/strawberry.png",height: 100,width: 100,fit: BoxFit.fill,),
                    const SizedBox(width: 20,),
                    Expanded(

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          TextUtil(text: "Strawberry",weight: true,size: 15,),
                          TextUtil(text: "Fruit",size: 10,color: Colors.grey,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextUtil(text: "\$32.19",weight: true,size: 13,color: T.primaryColor,),
                              Container(
                                height: 40,
                                width: 41,
                                margin:const  EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(


                                    borderRadius:const  BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20) ),
                                    color: T.primaryColor
                                ),
                                child: const Icon(Icons.add,color: Colors.white,) ,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),





                  ],

                )
            ),


          ],
        ),
      ),
    );
  }
}
