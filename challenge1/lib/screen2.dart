import 'package:challenge1/Screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
                  "Connect with Coffee Lovers ",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Follow other coffee enthisiasts , send them  message , and share your favorite coffee experiences .",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));
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
