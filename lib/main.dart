import 'package:flutter/material.dart';
import 'package:toonflix/widget/button.dart';
import 'package:toonflix/widget/currency_card.dart';

const taxAmount = 15;
const priceAmount = 30;

var finalPrcie = taxAmount + priceAmount;

class Player {
  String? name;

  Player({required this.name});
}

void main() {
  var jangho = Player(name: "jangho");

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'Hey, Selena',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w800),
                              ),
                              Text('Welcome back',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 18)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Total Balance',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white.withOpacity(
                              (0.8),
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('\$5 194 482',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                              text: 'Transfer',
                              bgColor: Color(0xFFF1B33B),
                              textColor: Colors.black),
                          Button(
                              text: 'Request',
                              bgColor: Color(0xFF1F2123),
                              textColor: Colors.white),
                        ],
                      ),
                      const Row(
                        children: [SizedBox(height: 40)],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Wallets',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const CurrencyCard(
                          yOffset: 0,
                          isInverted: true,
                          name: "Euro",
                          code: "EUR",
                          amount: "6 428",
                          icon: Icons.euro_rounded),
                      const CurrencyCard(
                          yOffset: -20,
                          isInverted: false,
                          name: "Bitcoin",
                          code: "BTC",
                          amount: "6 428",
                          icon: Icons.currency_bitcoin),
                      const CurrencyCard(
                          yOffset: -40,
                          isInverted: true,
                          name: "Dollar",
                          code: "USD",
                          amount: "6 428",
                          icon: Icons.attach_money),
                    ]))),
      ),
    );
  }
}
