import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
          decoration: BoxDecoration(
            color: text,
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(image: AssetImage('assets/images/profile.png')
            )
          ) ,
          width: 50,
          height: 50,
        ),

        SizedBox(width: small,),

        Column(
          children: [
            Text("Welcome", style: p1,),
            Text('Beast', style: heading3,)
          ],
        )
          ],
        ),
        
        Icon(Icons.notifications, color: icon, size: 28,),
      ],
    );
  }
}