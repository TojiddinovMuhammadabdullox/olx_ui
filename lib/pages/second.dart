import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hometask_37_olx/pages/first.dart';
import 'package:hometask_37_olx/pages/third.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  List<String> listProducts = [
    "assets/products/home_product.png",
    "assets/products/white_product.png",
    "assets/products/furniture_product.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F0F5),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/swap_icon.png",
                  width: 25,
                ),
              ),
              PopupMenuButton<String>(
                icon: Image.asset(
                  "assets/images/menu_icon.png",
                  width: 20,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem<String>(
                    child: Text(
                      "Gallery",
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => FirstScreen(),
                        ),
                      );
                    },
                    value: "Gallery",
                  ),
                  PopupMenuItem<String>(
                    child: Text(
                      "List",
                    ),
                    value: "List",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => SecondScreen(),
                        ),
                      );
                    },
                  ),
                  PopupMenuItem<String>(
                    child: Text(
                      "GridView",
                    ),
                    value: "GridView",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => ThirdScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.infinity,
            height: 250,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 300,
                      child: Image.asset(
                        listProducts[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 75,
                        height: 40,
                        color: const Color(0xFF1FE3DA),
                        child: const Center(
                          child: Text(
                            "TOP",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Пульт\nуниверсальный..."),
                        SizedBox(width: 40),
                        Icon(CupertinoIcons.heart),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      width: 70,
                      height: 30,
                      color: const Color(0xFFE0E6EB),
                      child: const Center(
                        child: Text("Новый"),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "50 000 cym",
                      style: TextStyle(
                        color: Color(0xFF355156),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Tashkent, Uzbekistan",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          // Add a separator between items
          return const Divider();
        },
      ),
    );
  }
}
