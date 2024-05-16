import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hometask_37_olx/pages/second.dart';
import 'package:hometask_37_olx/pages/third.dart';
import 'package:hometask_37_olx/widgets/product.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F0F5),
        actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // Add functionality for IconButton
                  },
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
      body: SingleChildScrollView(
          child: Column(
        children: [
          ProductScroll(image: "home_product.png"),
          SizedBox(height: 20),
          ProductScroll(image: "white_product.png"),
          SizedBox(height: 20),
          ProductScroll(image: "furniture_product.png"),
        ],
      )),
    );
  }
}
