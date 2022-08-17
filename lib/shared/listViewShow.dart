import 'package:flutter/material.dart';
import 'package:jobtask/shared/shared.dart';


class ShowListView  extends StatefulWidget {
  const ShowListView ({Key? key}) : super(key: key);

  @override
  State<ShowListView> createState() => _ShowListViewState();
}

class _ShowListViewState extends State<ShowListView> {
  @override
  int? select;
  List<String> typeName = [
    "Design of children's room",
    'Living room design',
    'Living room design',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      child: SizedBox(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return InkWell(
              child: ListText(typeName[index],
                  (select == index) ? Colors.yellow : Colors.white),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                setState(() {
                  select = index;
                  print("$select");
                });
              },
            );
          },
          itemCount: typeName.length,
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
  Widget ListText(String listText, Color color) => Container(

    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(5),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: color,
        // Set border width
        borderRadius: const BorderRadius.all(
            Radius.circular(10.0)), // Set rounded corner radius
        boxShadow: const [
          BoxShadow(blurRadius: 2, color: Colors.grey, offset: Offset(0, 1))
        ] // Make rounded corner of border
    ),
    child: Text(
      listText,
      style:getTextStyle3(),
    ),
  );
}
