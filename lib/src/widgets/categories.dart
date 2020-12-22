import 'package:flutter/material.dart';
import 'package:food_app/src/models/category.dart';

import '../commons.dart';
import 'title.dart';

//==creating a list of types object, category from the model
List<Category> categoriesList = [
  Category(name: "Salad", image: "home.jpg"),
  Category(name: "Steak", image: "logo.png"),
  Category(name: "Fast food", image: "table.png"),
  Category(name: "Desert", image: "home2.jpg"),
  Category(name: "Sea food", image: "floatingaction.jpg"),

];


class Categories  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        // itemCount: 14,
        itemCount: categoriesList.length,
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
                    child: Image.asset("images/${categoriesList[index].image}", width: 50,),
                  ),

                ),
                //======SPACE ======
                SizedBox(height: 10,),  //adds space
                customText(text: "${categoriesList[index].name}", size: 14,)

              ],
            ),
          );
        },
      ),
    );
  }
}
