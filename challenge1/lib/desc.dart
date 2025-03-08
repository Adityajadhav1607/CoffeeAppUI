import 'package:challenge1/Order.dart';
import 'package:challenge1/list.dart';
import 'package:flutter/material.dart';

class Descpage extends StatelessWidget {
  const Descpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          title: Center(child: Text(
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            "Navigation")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                height: 380,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: coffee.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("${coffee[index]["img"]}")),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 270,
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "${coffee[0]["name"]}"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      style: TextStyle(
                        color: Color(0xFF666A7A),
                      ),
                      "${coffee[0]["desc"]}")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("About"), Text("Menu"), Text("Review")],
              ),
              Text("-------------------------"),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "Hot Drinks")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFF9F2ED),
                          radius: 30,
                          child: Image.asset("assets/coffee.png"),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                                style: TextStyle(
                                  color: Color(0xFF666A7A),
                                ),
                                "Espresso"),
                          ],
                        ),
                        Text(
                            style: TextStyle(fontWeight: FontWeight.bold),
                            "IDR 20.000"),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      style: TextStyle(
                        color: Color(0xFF666A7A),
                      ),
                      "Count"),
                  Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      "IDR 60.000")
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                },
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: Color(0xFFC67C4E),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    
                  ),
                  
                  height: 50,
                  width: 180,
                  child: Center(child: Text(
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                    "Order")),
                  
                ),
              )
            ],
          ),
        ));
  }
}
