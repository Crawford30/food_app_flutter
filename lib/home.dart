import 'package:flutter/material.dart';
import 'package:food_app/src/commons.dart';
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
            Container(
              height: 120,
              child: ListView.builder(
                itemCount: 14,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index){

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Container(

                          decoration: BoxDecoration(
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                  color: red[50],
                                  offset: Offset(4,6),
                                  blurRadius: 20
                              ),
                            ],
                          ),

                          child: Padding(padding: EdgeInsets.all(4),
                            child: Image.asset("images/home.jpg", width: 50,),
                          ),

                        ),
                        //======SPACE ======
                        SizedBox(height: 10,),  //adds space
                        customText(text: "Salad", size: 14,)

                      ],
                    ),
                  );
                },
              ),
            ),

            

          ],
        ),
      ),
    );
  }
}