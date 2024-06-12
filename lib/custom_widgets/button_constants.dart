import 'package:flutter/material.dart';


Widget rectangleRoundedCornerButton(String btnTitle, Function onClick, {Color btnBGColor = Colors.orange}) {
  return ElevatedButton(
      onPressed: (){
        onClick();
      },
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(btnBGColor)),
      child: Text(btnTitle)
  );
}