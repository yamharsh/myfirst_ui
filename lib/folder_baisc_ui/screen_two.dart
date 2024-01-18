import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  List<Map<String, dynamic>> nameList = [
    {"icon": Icons.account_balance, "name": "Music"},
    {"icon": Icons.production_quantity_limits, "name": "Property"},
    {"icon": Icons.gamepad, "name": "Game"},
    {"icon": Icons.garage, "name": "Gadget"},
    {"icon": Icons.electric_bolt, "name": "Electronic"},
    {"icon": Icons.propane, "name": "Property"},
    {"icon": Icons.videogame_asset_outlined, "name": "Game"},
    {"icon": Icons.block, "name": "Bock"},
  ];
  List<String> sliderImage = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    // "assets/images/image3.jpeg",
    // "assets/images/image4.jpg",
  ];
  int index = 0;

  List<Map<String, dynamic>> bestSeller = [
    {"icon": Icons.account_tree, "name": "Plant"},
    {"icon": Icons.light, "name": "Lamp"},
     {"icon": Icons.chair, "name": "Chair"},
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Harshita Shekhawat",
                        style: TextStyle(fontSize: 30),
                      ),
                    ]),
                Stack(children: [
                  Icon(
                    Icons.shopping_cart_checkout_sharp,
                    size: 40,
                  ),
                  Positioned(
                    right: -1,
                    top: -5,
                    child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Searching Items..",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepOrange,
                  ),
                  child: Icon(
                    Icons.dehaze,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),


            CarouselSlider.builder(
                itemCount: sliderImage.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          sliderImage[index],
                          fit: BoxFit.fill,
                        )),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (value, reason) {
                    setState(() {
                      index = value;
                    });
                    print(index);
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  sliderImage.length,
                      (dotIndex) => Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: index == dotIndex
                            ? Colors.yellow
                            : Colors.grey,
                        shape: BoxShape.circle),
                    width: 20,
                    height: 20,
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 20,
              children: [
                ...List.generate(
                    nameList.length,
                        (index) => Container(
                      width: MediaQuery.of(context).size.width / 4 - 22.5,
                      child: Column(
                        children: [
                          Icon(
                            nameList[index]["icon"],
                            color: Colors.blue,
                          ),
                          Text(nameList[index]["name"])
                        ],
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Seller",
                 style: TextStyle(fontSize: 40),
                ),
                Text(
                  "See All",
                 style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
                spacing: 10,
                children: List.generate(
                    bestSeller.length,
                        (index) => Container(
                      width: MediaQuery.of(context).size.width / 3 - 22.5,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[300],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue,
                            ),
                            child: Icon(
                              bestSeller[index]["icon"],
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(bestSeller[index]["name"]),
                          ),
                          Text("data"),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}