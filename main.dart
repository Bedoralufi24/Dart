

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() { runApp(Mytasks());}
//slts نحط اسم التطبيق
class Mytasks extends StatelessWidget {
const Mytasks({super.key});

  @override
 Widget build(BuildContext context) {
  return MaterialApp(
     debugShowCheckedModeBanner: false,  //نعطل الشريط
     home: Scaffold(
      appBar: AppBar(
        elevation: 0,
          backgroundColor:BColors.snowWhite,   //كلاس للالوان عشان نضيفهم 
         title: Column(
          children: [
             SizedBox(
              height: 9,
              ),
              Text('Hello B',
                style: TextStyle(
                   fontWeight: FontWeight.w500,
                   fontSize: 20,
                   ),
                   ),
            Text(
              'you have work today',
              style: TextStyle
              (color: BColors.stoneGrey,
              fontWeight: FontWeight.w300,
              fontSize: 20,
              ),
              ),
             SizedBox(
                height: 9,
                 ),
                  ],
                  ),
          actions: [
             Icon(
              Icons.notification_add, 
              ),
            SizedBox(
              width: 9,
              ),
            Icon(
              Icons.menu,
              ),
            SizedBox(
              height: 20,
              ), 
              ],
              ),   // راس الموقع ونعدل عليه

        body: Padding( 
          padding: EdgeInsets.only( 
            top: 20,
            left: 30,
            right: 20,
            ) ,
          child:
           SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCards(),
                
                SizedBox(
                   height: 30,
                ),

                Text(
                  'Tasks of the day',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              
              SizedBox(
                height: 30,
                ),
               
               TaskCard(
                'Run in the morning', 
                BColors.snowWhite,
                ),
               
               SizedBox(
                height: 20,
                ),
               
               TaskCard(
                'Go to the gym',
                BColors.pinkBlush,
                ),
               
               SizedBox( 
                height: 20,
               ),

               TaskCard(
                'Read 5 pages',
                BColors.softYellow,
               ),
            ], 
          ),
         ), 
        ), 
      ), 
    );
  }
}


class TaskCard extends StatelessWidget {
  TaskCard(this.text, this.backgroundColor,);

 final String text;
 final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15,
         right: 15,
          top: 15,
          bottom: 15,
          ),
      width: double.infinity,
      decoration: BoxDecoration( 
        color: backgroundColor,
        borderRadius:
         BorderRadius.circular(18),
         ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Icon(
            Icons.circle_outlined,
          ),
         Text(
          text,style: 
            TextStyle(
               fontSize: 20,
              ),
            ),
            Icon(
              Icons.settings,
            ),
         ], 
        ), 
      ); 
   }
  }

class CustomCards extends StatelessWidget {const CustomCards({super.key});

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              'Reading',
              '6',
            Icons.menu_book,BColors.mintGreen,
            ),
          Card('Running',
               '2',
          Icons.directions_run,BColors.mintGreen,
        ),
      ],
    ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            'Study',
              '7',
            Icons.school,BColors.mintGreen,
          ),
        Card(
          'Gym',
            '3', 
          Icons.fitness_center, BColors.mintGreen, 
        ),
      ],
    ),
  ],
); 
}
}



class Card extends StatelessWidget {
  Card(
    this.text1,
    this.text2, 
    this.iconData, 
    this.backgroundColor,
  );
  
  final String text1;
  final String text2;
  final IconData iconData;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
  return Center(
    child: Container(
      padding: EdgeInsets.all(17,),
      width: 200,
      height: 120,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(17,),
        ),
       child: Column(
        children: [
        Row(
          children: [
            Icon(
              iconData,
            ),
          ],
        ),
         SizedBox(
          height: 30,
          ), 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,style:
                TextStyle(
                  fontSize: 18,
                  ),
                ),
            Text(
              text2,style: 
               TextStyle(
                 fontSize:18 ,
                ),
              ),
            ],
          ),
        ], 
      ), 
    ),
  );
}
}


class BColors {
  static Color periwinkleBlue = Color(0xFFB4C4FE); 
  static Color softYellow = Color(0xFFFFF580); 
  static Color mintGreen = Color(0xFFD0F4EA); 
  static Color pinkBlush = Color(0xFFFFC0F5); 
  static Color iceBlue = Color(0xFFF4F7FF); 
  static Color royalBlue = Color(0xFF3B6BB9); 
  static Color snowWhite = Color(0xFFFAFCFC); 
  static Color stoneGrey = Color(0xFF91949B); 
  static Color transparent = Color(0x00000000);
}