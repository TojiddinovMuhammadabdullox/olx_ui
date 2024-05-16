import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/products/home_product.png"),
        Image.asset("assets/products/white_product.png"),
        Image.asset("assets/products/furniture_product.png"),
      ],
    );
  }
}
