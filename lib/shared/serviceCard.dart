


import 'package:flutter/material.dart';

import 'shared.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({Key? key}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [CardBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: size.height*0.15,
            width: size.width*0.30,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("assets/imag1.jpg"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      buildSubText("Design of a children",Colors.black),

                      buildText("256 EG"),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      buildSubText("room for 2 children",Colors.black),

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      buildSubText("interior design",Colors.grey),

                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Book'),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
