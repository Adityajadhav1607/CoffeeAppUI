import 'package:challenge1/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter:ColorFilter.mode(const Color.fromARGB(255, 35, 30, 30), BlendMode.overlay),
                    fit: BoxFit.cover, image: AssetImage("assets/img1.jpg"))),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Welcome to Coffee Break ",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "your go-to app for conecting with fellow coffee lovers, discovering new cafes,and organizing coffee meetups ! ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFC67C4E),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
              
                      height: 50,
                      width: double.infinity,
                      
                      child: Center(child: Text("Get Started")),
                      
                      
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    height: 50,
                    width: double.infinity,
                    
                    child: Center(child: Text("Login")),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
