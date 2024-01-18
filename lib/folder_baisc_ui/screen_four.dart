import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  List<String> stageList = ["Stage1", "Stage2", "Stage3", "Stage4", "Stage5"];
  List<String> imageList = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg"
  ];
List<Map<String,dynamic>> wrapList =[
  {"icons":Icons.abc_sharp,"text":"music"},
  {"icons":Icons.games,"text":"game"},
  {"icons":Icons.propane_outlined,"text":"property"},
  {"icons":Icons.move_to_inbox,"text":"movie"},
  {"icons":Icons.emoji_food_beverage,"text":"food"},
  {"icons":Icons.near_me_rounded,"text":"news"},
  {"icons":Icons.train,"text":"travel"},
  {"icons":Icons.money,"text":"money"},
];


  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (String myText in stageList)
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text(myText)),
                    ),
                  ),
              ],
            ),
          ),

          // CarouselSlider(items: [
          //   // for(String image in imageList)
          //   // Container(
          //   //   margin: EdgeInsets.symmetric(horizontal: 10),
          //   //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)),
          //   // )
          //
          //
          //     //crousel without container
          //  ...List.generate(imageList.length, (index) => Padding(
          //    padding: const EdgeInsets.symmetric(horizontal: 10),
          //    child: ClipRRect(
          //        borderRadius: BorderRadius.circular(10),
          //        child: Image.asset(imageList[index],fit: BoxFit.fill,)),
          //  ))
          //
          // ], options: CarouselOptions(autoPlay: true,viewportFraction: 1)
          // ),

          CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index, realIndex) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.fill,
                      )),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {

                  setState(() {
                    currentIndex = index;
                  });

                },
              )),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  imageList.length,
                  (dotIndex) => Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: currentIndex==dotIndex ? Colors.yellow:Colors.grey),
                      ))
            ],
          ),

          SizedBox(height: 20),
         Wrap(
           spacing: 10,
           runSpacing: 10,
           children:List.generate(wrapList.length, (index) =>  Container(
           width: MediaQuery.of(context).size.width/4-22.5,
           height: 100,
           decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10)),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Icon(wrapList[index]["icons"],size: 30,color: Colors.white,),
               Text(wrapList[index]["text"],style: TextStyle(fontSize: 20,color: Colors.white),),

             ],
           ),
         )),)



        ],
      ),
    );
  }
}
