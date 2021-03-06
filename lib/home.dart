import 'package:flutter/material.dart';
import 'package:food_app/src/commons.dart';
import 'package:food_app/src/widgets/categories.dart';
import 'package:food_app/src/widgets/title.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            //========Nav Bar ====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customText(
                    text: "What are you looking for?",
                    size: 18 ,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ],

                ),

              ],
            ),

             //======SPACE ======
            SizedBox(height: 5,),  //adds space

            //====SEARCH BOX =====
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: grey[300],
                          offset: Offset(1,1),
                          blurRadius: 4
                      )
                    ]
                ),
                child: ListTile(
                  leading: Icon(Icons.search, color: red,),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find food and restaurants..",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(Icons.filter_list, color: red,),
                ),
              ),
            ),

            //======SPACE ======
            SizedBox(height: 5,),  //adds space

            //===========HORIZONTAL SCROLL VIEW ===
            //import the category widget
            Categories(),

            // //======SPACE ======
            // SizedBox(height: 2,),  //adds space

            //============POPULAR FOOD SECTION =====
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customText(text: "Featured", size: 20,),
            ),

           Container(
             height: 240,
             child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: 2,
                 itemBuilder: (_, index){
               return  Padding(padding: EdgeInsets.all(8),
               child: Container(
                 height: 240,
                 width: 200,
                 decoration: BoxDecoration(
                     color: white,
                     boxShadow: [
                       BoxShadow(
                           color: grey[300],
                           offset: Offset(1,1),
                           blurRadius: 4
                       )
                     ]
                 ),
                 child: Column(

                     children: <Widget> [
                       Image.asset("images/home.jpg", height: 140, width:140),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: customText(text: "Some food"),
                           ),
                           Padding(padding: EdgeInsets.all(8),
                         child:   Container(
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               color: white,
                               boxShadow: [
                                 BoxShadow(
                                     color: grey[300],
                                     offset: Offset(1,1),
                                     blurRadius: 4
                                 )
                               ]
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(4.0),
                             child: Icon(Icons.favorite_border,color: red, size: 18,),
                           ),
                         ),)
                         ],
                       ),


                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.only(left:8.0),

                                 child: customText(text: "4.7", size: 14,),
                               ),
                               SizedBox(width: 2,),
                               Icon(Icons.star, color: red, size:16,),
                               Icon(Icons.star, color: red, size:16,),
                               Icon(Icons.star, color: red, size:16,),
                               Icon(Icons.star, color: red, size:16,),
                               Icon(Icons.star, color: grey, size:16,),
                             ],

                           ),
                           
                           Padding(
                             padding: const EdgeInsets.only(right:8.0),
                             child: customText(text: "\$12.99", weight: FontWeight.bold,),
                           ),
                         ],
                       ),

                     ]

                 ),


               ),);

             }),
           ),

          ],
        ),
      ),
    );
  }
}