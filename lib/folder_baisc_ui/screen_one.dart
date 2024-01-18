import 'package:flutter/material.dart';


class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    //it is a list of 3 container where we use map to decorate /detail of 1 container
    List<Map<String, dynamic>> exploreName = [
      {"icon": Icons.account_tree, "name": "Plant"},
      {"icon": Icons.light, "name": "Lamp"},
      {"icon": Icons.chair, "name": "Chair"},
    ];

    return Scaffold(
      backgroundColor: const Color(0xff054456),
            body: Padding(
         padding: EdgeInsets.symmetric(
            horizontal: 15, vertical: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore",
                     style: TextStyle(fontSize: 50),
                    ),
                    Text("Find your products more easirer here", style: TextStyle(fontSize: 10),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            //here => after this we have to write printing statement
            Wrap(
              spacing: 10,
              runSpacing: 20,
              children: List.generate(
                exploreName.length,
                    (index) => Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Icon(
                          exploreName[index]["icon"],
                          size: 80,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        width: double.infinity,
                        height: 50,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Colors.white,
                        ),
                        child: Text(exploreName[index]["name"]),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

