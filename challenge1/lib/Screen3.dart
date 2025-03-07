import 'package:challenge1/Screen4.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  
                  fit: BoxFit.cover, image: AssetImage("assets/img1.jpg"))),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Organize Coffee Meetups",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Set the date ,time, and location , and watch as other join in to share the joy of a good cup of coffee and coversations  ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen4()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC67C4E),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                      height: 50,
                      width: double.infinity,
                      
                      child: Center(child: Text("Next")),
                    ),
                ),
                SizedBox(
                  height: 20,
                ),
                
              ],
            ),
          ),
        )
      ],
    ));

  }
}