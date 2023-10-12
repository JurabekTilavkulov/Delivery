import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatefulWidget {
  const MyCustomButton({required this.buttonChild});
   final String buttonChild;


  @override
  State<MyCustomButton> createState() => _MyCustomButtonState(buttonChild);
}

class _MyCustomButtonState extends State<MyCustomButton> {

  String buttonChild;

  bool anyChange=false;


  _MyCustomButtonState(this.buttonChild);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        setState(() {
          anyChange=!anyChange;
        });
      },
      child: Container(
        width: 100,


        alignment: Alignment.center,
        child: Text(buttonChild,style: TextStyle(fontSize: 15,color: anyChange?Colors.white:Colors.black)),
        decoration: BoxDecoration(
          color: anyChange? Colors.red : Color(0x35909098),
          borderRadius: BorderRadius.circular(10),
          boxShadow: anyChange?[BoxShadow(
            color:Colors.red,
            offset: Offset(2,2),
            blurRadius: 5
          )]:null,
        ),
      ),
    );
  }
  bool bittasi(){
    return true;
  }
}
