

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:untitled1/button.dart';


class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  bool changeColor=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(           // teppa qator
            padding: EdgeInsets.only(top:51),

           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Container(


                 child: SvgPicture.asset("assets/svg/diladress.svg"),
               ),
               Container(
                 height: 50,
                 width: 50,
                 child: Stack(
                   alignment: Alignment.center,
                   children: [
                     Image.asset("assets/png/trv.png"),
                     Positioned(
                       top: 30,
                         child: SvgPicture.asset("assets/svg/trv1.svg"))

                   ],
                 )
                 //SvgPicture.asset("assets/svg/trv1.svg"),
               )
             ],

           ),
          ),// teppa qator
          Container(     // ikkinchi qator

            padding: EdgeInsets.only(left: 20,top: 20),
              child: Row(
            children: [
              SizedBox(
                width:283,
                height: 45,
                child:TextField(

                  clipBehavior: Clip.antiAlias,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(10)),
                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                      suffixIcon: Icon(Icons.mic),
                      hintText: "Search by restaurant or entree",
                    hintStyle: TextStyle(fontSize: 13),
                    fillColor: Color(0x56909098),
                    filled: true
                  ),
                ) ,
              ),

              Container(

                padding: EdgeInsets.only(left: 10),
                  child:Container(
                      decoration: BoxDecoration(color: Color(0x56909098),borderRadius: BorderRadius.circular(10)),
                    height: 45,
                      width: 37,
                      child: Icon(Icons.tune))
                   )
            ],
          ) ),// ikkinchi qator
          Container( // uchinchi qator
            padding: EdgeInsets.only(left: 20,top: 20),
              child: Text("Discover",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,))),// uchinchi qator
          Container(
            padding: EdgeInsets.only(left: 20, top: 10),

            width: 490,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(5),
              children: <Widget> [
                Container(padding: EdgeInsets.only(right: 10), child: MyCustomButton(buttonChild: "Nearby")),
                Container(padding: EdgeInsets.only(right: 10), child: MyCustomButton(buttonChild: "Nearby")),
                Container(padding: EdgeInsets.only(right: 10), child: MyCustomButton(buttonChild: "Nearby")),
                Container(padding: EdgeInsets.only(right: 10), child: MyCustomButton(buttonChild: "Nearby")),



                // Container(child:MyCustomButton(buttonChild: "Nearby",)),
                // Container(child:MyCustomButton(buttonChild: "Nearby",)),
                // Container(child:MyCustomButton(buttonChild: "Nearby",)),
                // Container(child:MyCustomButton(buttonChild: "Nearby",)),
              ],

            ),
          ),
          Container(
            height: 400,
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset("assets/jpg/rasm1.jpg"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset("assets/jpg/rasm2.jpg"),
                ),
              ],
            ),
          )


        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(

        backgroundColor: Colors.white,
        buttonBackgroundColor: Color(0xFFE92F48),
        color: Color(0xFFE92F48),
        items: <Widget>[
          Icon(Icons.home,color: Colors.white),
          Icon(Icons.add_shopping_cart,color: Colors.white),
          Icon(Icons.leaderboard,color: Colors.white),
          Icon(Icons.person,color: Colors.white)
        ],
        onTap: (index){

          print(index);
        },

      ),
    );
  }
}
