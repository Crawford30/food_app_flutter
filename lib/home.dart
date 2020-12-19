import 'package:flutter/material.dart';
import 'package:food_app/src/commons.dart';
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
                  child: Text("What would you like to eat?", style: TextStyle(fontSize: 18),),
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
                          color: grey,
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
            )
            

          ],
        ),
      ),
    );
  }
}