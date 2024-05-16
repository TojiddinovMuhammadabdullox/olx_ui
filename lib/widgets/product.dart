import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScroll extends StatelessWidget {
  final String image;
  const ProductScroll({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.4),
      width: double.infinity,
      height: 520,
      child: Column(
        children: [
          Image.asset(
            "assets/products/$image",
            width: 400,
          ),
          const Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Пульт универсальный работающий на\nразных частотах",
                  style: TextStyle(
                    color: Color(0xFF92A5A4),
                  ),
                ),
                Icon(
                  CupertinoIcons.heart,
                  color: Color(0xFF92A5A4),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 30,
                      color: Color(0xFFE0E6EB),
                      child: Center(
                        child: Text("Новый"),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Tashkent, Uzbekistan",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "50 000 cym",
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
