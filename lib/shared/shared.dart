


import 'package:flutter/material.dart';

TextStyle getTextStyle1(){
  return const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily:'Roboto',
      color:Colors.black

  );
}
TextStyle getTextStyle2(){
  return const TextStyle(
      fontSize: 16,
      fontFamily:'Roboto'

  );
}
TextStyle getTextStyle3(){
  return  const TextStyle(
      fontSize: 16,
      fontFamily:'Roboto',
      color:Colors.grey

  );
}


BoxShadow CardBoxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 2,
  blurRadius: 8,
  offset: const Offset(0, 0),
);

buildSubText(String text,Color color){
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Text(
      text,
      overflow: TextOverflow.ellipsis,
      style:  TextStyle(
        fontSize: 15,
         color: color,
         fontFamily:'Roboto'

      ),
    ),
  );
}
buildText(String text){
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
          fontSize: 18,
          color: Colors.blue,
          fontFamily:'Roboto'

      ),
    ),
  );
}

buildRow(String text1,String text2,){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text1, style: getTextStyle1()),
      Text(text2, style: getTextStyle2()),
    ],
  );
}
