import 'package:challenge1/list.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            "Order")),
        ),
        body:Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/Home.png"),
                      SizedBox(
                        width: 10,
                      ),
                  Column(
            children: [
              Text("Shipping Address"),
              Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                "JL Melato NO.12"),
              
            ],
          ),
                    ],
                  ),
          Image.asset("assets/Home.png")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/Home.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Notes for Drivers")
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    "Shopping List"),
                    Text(
                    style: TextStyle(
                      color: Color(0xFFC67C4E),
                    ),
                    "+Add More")
                ],
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
                                "Machiato"),
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
                                "Cold Brew"),
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
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                "Payment Details ")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Price"),
                      Text("IDR 65.000")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee"),
                      Text("IDR 14.000")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Packing Fee"),
                      Text("IDR 3.200")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 150,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            
                            children: [
                              Text("IDR 65.000"),
                              SizedBox(
                                width: 10,
                              ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFC67C4E),
                              borderRadius: BorderRadius.all(Radius.circular(50))
                            ),
                            height: 40,
                            width: 100,
                            child: Center(child: Text("💸GoPay")),
                            
                          )
                            ],
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Image.asset("assets/Home.png")
                        ],
                      ),
                      Row(
                        children: [],
                      )
                    ],
                  ),
                  
                  
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC67C4E),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                height: 60,
                child: Center(child: Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  "Order Now")),
              )
            ],
          ),
          
        ));
  }
}
