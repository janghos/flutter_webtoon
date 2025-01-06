import 'dart:ffi';

import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final double yOffset;
  final bool isInverted;

  final blackColor = const Color(0xFF1F2123);
  final whiteColor = Colors.white;
  const CurrencyCard(
      {super.key,
      required this.yOffset,
      required this.name,
      required this.code,
      required this.amount,
      required this.isInverted,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, yOffset),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isInverted ? blackColor : whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: isInverted ? whiteColor : blackColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? whiteColor : blackColor,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            color: isInverted ? whiteColor : blackColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(-5, 12),
                    child: Icon(
                      icon,
                      color: isInverted ? whiteColor : blackColor,
                      size: 88,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
