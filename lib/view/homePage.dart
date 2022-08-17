import 'package:flutter/material.dart';
import '../shared/listViewShow.dart';
import '../shared/serviceCard.dart';
import '../shared/shared.dart';
import '../shared/offerCard.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title:  Text(
            "Interior design",
            style: getTextStyle1()
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(

              children: [

                const ShowListView(),
               buildRow("Different services","see all"),
                const ServiceCard(),
                const ServiceCard(),
                buildRow("Offers & packages","see all"),
                const OfferCard(),
              ],
            ),
          ),
        ));
  }
}
