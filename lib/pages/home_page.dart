import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dribble/util/emoticon_face.dart';
import 'package:dribble/util/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(155, 14, 255, 160),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.person_pin_rounded), label: ''),
      // ],
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.fastLinearToSlowEaseIn,
        items: const [
          Icon(
            Icons.home_filled,
            size: 30,
          ),
          Icon(
            Icons.shopping_cart_rounded,
            color: Colors.black,
            size: 30,
          ),
          Icon(
            Icons.person_pin_rounded,
            size: 30,
          ),
        ],backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration:
        const BoxDecoration(
            gradient: LinearGradient(
              colors: [
              Color(0xFF66bb6a),
              Color(0xFF43a047),
              Color(0xFF009688),
              Color(0xFF00796b),
              Color(0xFF00acc1),
            ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,)),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi Jason!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              '10 Sep, 2022',
                              style: TextStyle(
                                color: Colors.green[100],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[400],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey[300],
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'What did you like the most?',
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '👍',
                            ),
                            SizedBox(height: 8,),
                            Text(
                              'Excellent \nTaste',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '🎁',
                            ),
                            SizedBox(height: 8,),
                            Text(
                              'Adequate \nQuantitys',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '💰',
                            ),
                            SizedBox(height: 8,),
                            Text(
                              'Value for \nMoney',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '📝',
                            ),
                            SizedBox(height: 8,),
                            Text(
                              'Other \nsuggestion',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Expanded(
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 26),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Color.fromARGB(255, 234, 233, 233)),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dishes',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.emoji_food_beverage_sharp,
                                exerciseName: 'Korea Food',
                                numberOfExercises: 8,
                                color: Colors.redAccent,
                              ),
                              ExerciseTile(
                                icon: Icons.fastfood,
                                exerciseName: 'Sushi Food',
                                numberOfExercises: 16,
                                color: Colors.blueAccent,
                              ),
                              ExerciseTile(
                                icon: Icons.fastfood_outlined,
                                exerciseName: 'Indian Food',
                                numberOfExercises: 9,
                                color: Colors.purpleAccent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
