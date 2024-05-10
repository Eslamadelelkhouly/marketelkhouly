import 'package:flutter/material.dart';

class ProductCatgory extends StatelessWidget {
  ProductCatgory({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      margin: const EdgeInsets.only(top: 10, right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        this.name,
        style: const TextStyle(color: Color(0xff00355d)),
      ),
    );
  }
}
