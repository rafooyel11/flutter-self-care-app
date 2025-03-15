import 'package:flutter/material.dart';

class PracticeWidget extends StatelessWidget {
  PracticeWidget({
    super.key,
    required this.color,
    required this.emoji,
    required this.title,
    required this.time,
  });

  Color color;
  String emoji;
  String title;
  int time;

  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),   
      ),
      padding: EdgeInsets.all(20),
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  
        children: [
          Row(  
            children: [  
              Container(  
                decoration: ShapeDecoration(
                  shape: ContinuousRectangleBorder(  
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Colors.white
                ),
                padding: EdgeInsets.all(8),
                child: Text(  
                  emoji,
                  style: TextStyle(  
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Row(  
            children: [ 
              Column(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [  
                  Text(  
                    title,
                    style: TextStyle(  
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$time min',
                    style: TextStyle(  
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                    ),
                    )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
