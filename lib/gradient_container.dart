import 'package:flutter/material.dart';
import 'package:udemy_2_1_soldfoundation/dice_roll.dart';


const startAlignment =Alignment.topLeft;
const endAlignment= Alignment.bottomRight;





class GradientContainer extends StatelessWidget{
 const GradientContainer(this.color1,this.color2,{super .key,});

 const GradientContainer.purple({super.key}):color1=Colors.purple, color2=Colors.indigo;

  final Color color1;
  final Color color2;


  @override
  Widget build(BuildContext context) {
   
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1,color2],
            begin:startAlignment,
            end: endAlignment
          
          ),
        ),
        child:Center(
          child: DiceRoll(),
        )
      );
  }

}




// class GradientContainer extends StatelessWidget{
//   const GradientContainer({super .key,required this.colors});
//   final List<Color> colors;


//   @override
//   Widget build(BuildContext context) {
   
//     return Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: colors,
//             begin:startAlignment,
//             end: endAlignment
          
//           ),
//         ),
//         child:const StyledText("Hello World!")
//       );
//   }

// }