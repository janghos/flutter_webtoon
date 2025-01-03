import 'package:flutter/material.dart';
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
      home :Scaffold(
        backgroundColor: const Color(0xFF181818)
        ,
        body : Padding(padding : const EdgeInsets.symmetric(horizontal: 40),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height : 80
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              const Text('Hey, Selena', 
                style: TextStyle(
                color : Colors.white,
                fontSize : 28 ,
                fontWeight : FontWeight.w800),
                  ),
              Text('Welcome back',
                style : TextStyle(color: Colors.white.
                withOpacity(0.8),
                fontSize: 18)),
            ],
            )
            ],),
            const SizedBox(height : 120,
            ),
            Text(
              'Total Balance',
              style:  TextStyle(
                fontSize: 22,
                color : Colors.white.withOpacity((0.8),
                )
              ),
            ),
            const SizedBox(height : 5,),
            const Text(
              '\$5 194 482',
              style:  TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w600,
                color : Colors.white,
                )
              ),
              const SizedBox(height : 30,),

              Row(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.amber
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20, 
                      horizontal: 50,
                      ),
                  child : Text('Transfer',
                  style: TextStyle(
                    fontSize: 20,
                  ),),
                  ),
                  )
              ],)
          ],
        )
      ),
      )
    );
  }
}
