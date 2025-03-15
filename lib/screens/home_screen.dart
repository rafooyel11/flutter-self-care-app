import 'dart:math';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:selfcare_application/utils/constats.dart';
import 'package:selfcare_application/widgets/feeling_widget.dart';
import 'package:badges/badges.dart' as badges;
import 'package:selfcare_application/widgets/practice_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    List<String> selfCareItems = ['Practices', 'Movies', 'Books', 'Tests'];

    List<String> practices = [
      'Meditation',
      'Wake up',
      'Positive focus',
      'Deep breathing',
      'Mindfulness',
      'Creativity',
    ];

    List<String> practiceEmoji = ['🧘‍♀️', '🛌', '🙏', '🤧', '👀', '🎨'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // Snippet for header
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                    shape: ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    color: Constants.grey,  
                                  ),
                                  padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.person,
                                  )
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rafael Herrera',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    SizedBox(height: 3),
                                    Text(
                                      'Patient',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:13,
                                      ),
                                    ),
                                ], 
                              ),
                              Spacer(),
                              Container(  
                                decoration: ShapeDecoration(  
                                  shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  color: Constants.grey
                                ),
                                padding: EdgeInsets.all(10),  
                                child: badges.Badge(
                                  position: badges.BadgePosition.topEnd(
                                    top: 0,
                                    end: 2,
                                  ) ,
                                  badgeStyle: badges.BadgeStyle(
                                    badgeColor: Constants.green,
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1.5,
                                    )
                                  ),
                                  child: Icon(
                                    Iconsax.notification5,
                                    color: Colors.grey,
                                    ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(  
                            children: [
                              Text(
                                'How do you feel today?',
                                style: TextStyle(  
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FeelingWidget(emoji: '😊', title: 'Happy'),
                              FeelingWidget(emoji: '😐', title: 'Neutral'),
                              FeelingWidget(emoji: '😟', title: 'Sad'),
                              FeelingWidget(emoji: '😰', title: 'Anxious'),
                              FeelingWidget(emoji: '😡', title: 'Angry'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Snippet for Rounded Container Layout
                Expanded(
                  flex: 2,
                  child: Container(  
                    decoration: BoxDecoration( 
                      color: Constants.darkGreen,
                      borderRadius: BorderRadius.only(  
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(  
                        children: [
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Text(
                                'Next Appointment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(  
                            children: [  
                              Container(  
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade600.withAlpha(102),
                                  borderRadius: BorderRadius.circular(20),
                                ),  
                                padding: EdgeInsets.all(15),
                                child: Column(  
                                  children: [  
                                    Text(  
                                      '28',
                                      style: TextStyle(  
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(  
                                      'Apr',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 15),

                              // Continue Here!!! 24:15 Youtube
                              Expanded(  
                                child: Container(  
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade600.withAlpha(102),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(  
                                        crossAxisAlignment: CrossAxisAlignment.start,  
                                        children: [  
                                          Text(
                                            '14:30',
                                            style: TextStyle(  
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text( 
                                            'Taro Sakamoto',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(  
                                        Icons.more_horiz_outlined,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                )
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
            DraggableScrollableSheet(  
              builder: (context, scrollController) => Container(  
                decoration: BoxDecoration(  
                  color: Colors.white,
                  borderRadius: BorderRadius.only(  
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(  
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomScrollView(  
                    controller: scrollController,
                    slivers: [ 
                      SliverToBoxAdapter(  
                        child: SizedBox(height: 15),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 200),
                        sliver: SliverToBoxAdapter(  
                          child: Container(  
                            height: 4,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(  
                        child: SizedBox(height: 10),
                      ),
                      SliverToBoxAdapter(  
                        child: Row(  
                          children: [  
                            Text(  
                              'Self-care',
                              style: TextStyle(  
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(  
                        child: SizedBox(height: 25),
                      ),
                      SliverToBoxAdapter(  
                        child: Container(
                          decoration: BoxDecoration(  
                            border: Border.all(  
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(selfCareItems.length, (index) {
                              return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Container(  
                                  decoration: BoxDecoration(  
                                    color: selectedIndex == index
                                    ? Colors.grey.shade300
                                    : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  child: Text( 
                                    selfCareItems[index],
                                    style: TextStyle(  
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: selectedIndex == index 
                                      ? Colors.black
                                      : Colors.grey,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(  
                        child: SizedBox(height: 20),
                      ),
                      SliverGrid.builder(  
                        itemCount: practices.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          ), 
                      itemBuilder: (context, index) => PracticeWidget(  
                          color: Constants.practiceTileColors[index],
                          emoji: practiceEmoji[index],
                          title: practices[index],
                          time: Random().nextInt(20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              initialChildSize: 0.4,
              minChildSize: 0.4,
              maxChildSize: 0.9,
            ),
          ],
        ),
      ),
    );
  }
}
