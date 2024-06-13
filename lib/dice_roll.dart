import 'dart:math';

import 'package:flutter/material.dart';

final random=Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {


  var currentDiceRoll = 2;

void rollDice(){
  setState(() {
    currentDiceRoll = random.nextInt(6)+1;

  });
 
}




  @override
  Widget build(BuildContext context) {
    return Column( 
            mainAxisSize: MainAxisSize.min,
            children: [ 
              Image.asset("assets/images/dice-$currentDiceRoll.png",width: 200,),
             const SizedBox( 
                height: 20,
              ),
              TextButton(onPressed: rollDice,
              style: TextButton.styleFrom(
                //padding:const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,textStyle:const TextStyle(fontSize: 28,)),
               child: const Text("Roll Dice") )
            ],
          );
  }
}