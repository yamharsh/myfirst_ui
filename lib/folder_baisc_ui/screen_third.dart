import 'package:flutter/material.dart';

class ScreenThird extends StatelessWidget {
  const ScreenThird({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> skills = [
      {"image": "assets/images/image1.jpg", "text": "Technique","color":Colors.yellow},
      {"image": "assets/images/image2.jpg", "text": "Arsenal","color":Colors.purple},
      {"image": "assets/images/image3.jpg", "text": "Coordination","color":Colors.red},
      {"image": "assets/images/image4.jpg", "text": "Songs","color":Colors.pink},
    ];
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow),
              ),
            ),
            Text("Skills \nTo Pump!",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(
                skills.length,
                (index) => Container(
                width: MediaQuery.of(context).size.width/2-22.5,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: skills[index]["color"],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      skills[index]["image"],
                      height: 100,
                      width: 100,
                    ),
                    Text(skills[index]["text"]),
                  ],
                )),
              ),
            ),
            SizedBox(height: 50),//height works as column wise
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
              Icon(Icons.arrow_back_ios,color: Colors.white,),
              Text("Lesson Plan",style: TextStyle(color: Colors.white),),
              Spacer(),
              Text("Your Progress",style: TextStyle(color: Colors.white)),
              Icon(Icons.arrow_forward_ios,color: Colors.white,),
              
            ],)
          ],
        ),
      ),
    );
  }
}
