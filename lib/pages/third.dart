import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hometask_37_olx/pages/first.dart';
import 'package:hometask_37_olx/pages/second.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key});
  List<String> listProducts = [
    "assets/products/home_product.png",
    "assets/products/white_product.png",
    "assets/products/furniture_product.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBAD4D0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF1F0F5),
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
      body: GridView.builder(
        itemCount: 20,
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 3 / 5,
        ),
        itemBuilder: (context, index) {
          return Container(
            color: const Color(0xFFF1F0F5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        listProducts[index % 3],
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 60,
                          height: 25,
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
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text("Пульт\nуниверсальный..."),
                      SizedBox(width: 20),
                      Icon(CupertinoIcons.heart),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 70,
                    height: 30,
                    color: const Color(0xFFE0E6EB),
                    child: const Center(
                      child: Text("Новый"),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Tashkent, Chilonzor\nregion\n13 may 2024y",
                    style: TextStyle(
                      color: Color(0xFF91A3A4),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
