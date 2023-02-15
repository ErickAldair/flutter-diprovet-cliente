import 'package:flutter/material.dart';

class Superior extends StatelessWidget {
  final String buttonLeft;
  final String buttonRight;
  final String pageName;

  const Superior(
    this.buttonLeft,
    this.buttonRight,
    this.pageName,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                icon:
                    const Icon(Icons.arrow_back, color: Colors.white, size: 40),
                onPressed: () => Navigator.pushNamed(context, buttonLeft),
              ),
              const SizedBox(width: 250),
              IconButton(
                icon: const Icon(
                  Icons.add_shopping_cart_rounded,
                  size: 30,
                  color: Colors.black12,
                ),
                onPressed: () => Navigator.pushNamed(context, buttonRight),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Text(
            pageName,
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 5,
            ),
          ),
          const Text(
            'DIPROVET',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 5,
            ),
          ),
        ],
      ),
    );
  }
}
