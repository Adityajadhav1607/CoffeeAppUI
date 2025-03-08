import 'package:challenge1/desc.dart';
import 'package:challenge1/list.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                color: Colors.black,
              ),
              Positioned(
                  top: 125,
                  left: 57,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 150,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  style: TextStyle(
                                    color: Color(0xFF666A7A),
                                  ),
                                  "Your Card Balence"),
                              Text(
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  "💸IDR 246.000"),
                            ],
                          ),
                          Text(
                              "◊----------------------------------------------------------------◊"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/Cloud download.png"),
                                  Text(
                                      style: TextStyle(
                                        color: Color(0xFF666A7A),
                                      ),
                                      "Top up")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/Cloud upload.png"),
                                  Text(
                                      style: TextStyle(
                                        color: Color(0xFF666A7A),
                                      ),
                                      "Pay")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/Sale.png"),
                                  Text(
                                      style: TextStyle(
                                        color: Color(0xFF666A7A),
                                      ),
                                      "Promo")
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/Time Circle.png"),
                                  Text(
                                      style: TextStyle(
                                        color: Color(0xFF666A7A),
                                      ),
                                      "History")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Good morning Walsh!",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "It’s a great day for coffee",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/Search.png"),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset("assets/Bell.png")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0E121F)),
                        "Your Card Rewards"),
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFC67C4E)),
                        "View All"),
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
                        children: [
                          Row(
                            children: [
                              Text(
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  "Free 1 Coffee"),
                              SizedBox(
                                width: 120,
                              ),
                              Row(
                                children: [
                                  Text(
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      "2"),
                                  Text(
                                      style: TextStyle(
                                        color: Color(0xFF666A7A),
                                      ),
                                      "/5")
                                ],
                              )
                            ],
                          ),
                          Text(
                              style: TextStyle(
                                color: Color(0xFF666A7A),
                              ),
                              "Buy 5 Coffee and get 1 coffee for free"),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0E121F)),
                        "Recommended Place"),
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFC67C4E)),
                        "View All")
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  color: Colors.white,
                  child: ListView.builder(
                      itemCount: coffee.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Descpage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "${coffee[index]["img"]}"))),
                              width: 210,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "${coffee[index]["name"]}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset("assets/Location.png"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${coffee[index]["location"]}",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0E121F)),
                            "Popular Place"),
                        Text(
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFC67C4E)),
                            "View All")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.white,
                      child: ListView.builder(
                          itemCount: coffee.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Image.asset("${coffee[index]["img"]}"),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            );
                          }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/Home.png"),
            Image.asset("assets/Search_2.png"),
            Image.asset("assets/Gift.png"),
            Image.asset("assets/User.png"),
          ],
        ),
      ),
    );
  }
}
