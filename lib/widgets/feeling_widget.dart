import 'package:flutter/material.dart';
import 'package:selfcare_application/utils/constats.dart';

class FeelingWidget extends StatelessWidget {
  FeelingWidget({super.key, required this.emoji, required this.title});

  String emoji;
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(  
      children: [  
        Container(  
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(  
            color: Constants.grey,
            shape: BoxShape.circle,
          ),
          child: Text(  
            emoji,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(  
          title,
          style: TextStyle(  
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}