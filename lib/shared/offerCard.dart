import 'package:flutter/material.dart';

import 'shared.dart';


class OfferCard  extends StatelessWidget {
  const OfferCard ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
         borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [CardBoxShadow],
      ),
      margin: const EdgeInsets.only( bottom: 10, top:10),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

           Container(
             height: 200,
                width: double.infinity,
                decoration:  BoxDecoration(
                  borderRadius:BorderRadius.circular(15) ,
                  image: const DecorationImage(
                    image: AssetImage("assets/image.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),



          const SizedBox(
            height: 8,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              buildSubText("Design of a children room \nfor 2 children",Colors.black),

              buildText("256 EG"),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildSubText("interior design",Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  for (int i =0;i<4;i++)const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  )

                ],
              )

            ],
          ),

              ElevatedButton(
                onPressed: () {},
                child: const Text('Book'),
              ),



        ],
      ),
    );
  }
}
