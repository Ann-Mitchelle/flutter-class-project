import 'package:flutter/material.dart';

var iconList = [
  Icons.home,
  Icons.holiday_village,
  Icons.vaccines,
  Icons.work,
  Icons.work_off,
  Icons.work_outline,
  Icons.workspaces_filled,
  Icons.workspaces_outline,
  Icons.wrap_text,
  Icons.wrong_location,
];

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      color: Colors.blueAccent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  height: 200,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        iconList[index],
                        color: Colors.blueAccent,
                      ),
                      Text("Groupwork")
                    ],
                  ),
                ),
              );
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
