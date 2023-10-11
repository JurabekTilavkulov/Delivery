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
  bool changeColrButtom=false;
  bool textColrChane=false;
  bool boxShadowExist=false;


  _MyCustomButtonState(this.buttonChild);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){
        setState(() {
          changeColrButtom=!changeColrButtom;
          textColrChane=!textColrChane;
          boxShadowExist=!boxShadowExist;
        });
      },
      child: Container(
        width: 100,


        alignment: Alignment.center,
        child: Text(buttonChild,style: TextStyle(fontSize: 15,color: textColrChane?Colors.white:Colors.black)),
        decoration: BoxDecoration(
          color: changeColrButtom? Colors.red : Color(0x35909098),
          borderRadius: BorderRadius.circular(10),
          boxShadow: boxShadowExist?[BoxShadow(
            color:Colors.red,
            offset: Offset(2,2),
            blurRadius: 5
          )]:null,
        ),
      ),
    );
  }
}
