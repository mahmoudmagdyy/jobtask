

import 'package:flutter/material.dart';

import 'homePage.dart';


class BottomNaveBar extends StatefulWidget {
  const BottomNaveBar({Key? key}) : super(key: key);

  @override
  _BottomNaveBarState createState() => _BottomNaveBarState();
}

class _BottomNaveBarState extends State<BottomNaveBar> {
  @override
  int pageIndex = 0;

  final pages = [
    HomePage(),
    const Text("page2"),
    const Text("page3"),
    const Text("page4"),
    const Text("page5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ?  const Icon(
                    Icons.home_outlined,
                    color: Colors.yellow,
                    size: 25,
                  )
                      : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ?  const Icon(
                Icons.photo_outlined,
                color: Colors.yellow,
                size: 25,
              )
                  : const Icon(
                Icons.photo_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ?  const Icon(
                Icons.home_repair_service_outlined,
                color: Colors.yellow,
                size: 25,
              )
                  : const Icon(
                Icons.home_repair_service_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ?  const Icon(
                Icons.shopping_cart,
                color: Colors.yellow,
                size: 25,
              )
                  : const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ?  const Icon(
                Icons.person_outline_outlined,
                color: Colors.yellow,
                size: 25,
              )
                  : const Icon(
                Icons.person_outline_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),

          ],
        ),
      ),
    );
  }
}


