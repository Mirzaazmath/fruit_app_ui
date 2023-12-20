import 'package:flutter/material.dart';

import '../utils/text_utils.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var T=Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor:T.scaffoldBackgroundColor,
        actions: [IconButton(onPressed: (){}, icon:const  Icon(Icons.shopping_cart_outlined))],

      ),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Image.asset("assets/rambutan.png",fit: BoxFit.cover,),

          ),
          Expanded(child: Container(
            width: double.infinity,
            padding:const  EdgeInsets.all(20),
            decoration:const  BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: TextUtil(text: "Rambutan",weight: true,size:18,)),
            Container(
              height: 35,
              width: 120,
              
             padding:const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: T.primaryColor.withOpacity(0.1)
              ),
              alignment: Alignment.center,
              child:  Row(
                children: [
                const   CircleAvatar(backgroundColor: Colors.grey,
                  child: Icon(Icons.remove,color: Colors.white,),),
                  Expanded(child: Center(child: TextUtil(text: "1",))),
                  CircleAvatar(backgroundColor: T.primaryColor,
                    child: const Icon(Icons.add,color: Colors.white,),)
                ],
              )
            ),


                  ],
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 80,
                  margin:const  EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: T.primaryColor.withOpacity(0.1)
                  ),
                  alignment: Alignment.center,
                  child:  TextUtil(text: "\$22.99",weight: true,size: 13,color: T.primaryColor,),
                ),
               const  Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextUtil(text: "Description",weight: true,size: 16,color: T.primaryColor,),
                    TextUtil(text: "Fruit",size: 13,color: Colors.grey,),
                  ],
                ),
                const Spacer(),
                TextUtil(text: "Rambutans are furry, bright red fruits with a creamy white center. These fruits are native to Malaysia, but have recently begun to spread throughout the rest of the world. They make quite a statement in grocery stores, health food stores, and even farmers' markets around the US",size: 12,),
               const  Spacer(),
                Row(
                  children: [

                    Container(
                      height: 50,
                      width: 50,
                      margin:const  EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(

                          border: Border.all(  color: T.primaryColor),
                          borderRadius: BorderRadius.circular(10),

                      ),
                      child: const Icon(Icons.shopping_cart_outlined,) ,
                    ),
                    const  SizedBox(width: 20,),
                    Expanded(child: Container(
                        height: 50,

                        padding: const EdgeInsets.symmetric(horizontal: 10),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: T.primaryColor,
                          boxShadow: [
                            BoxShadow(
                                color: T.primaryColor.withOpacity(0.2),
                                offset:const  Offset(5,5),
                                blurRadius: 10
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: TextUtil(text: "Buy Now",color: T.primaryColorLight,)
                    ), ),


                  ],
                ),
              ],
            ),

          )
          )
        ],
      ),

    );
  }
}
