import 'package:corona/screens/symptoms.dart';
import 'package:flutter/material.dart';
import 'package:corona/utils/constants.dart';

class PreventionPage extends StatefulWidget {
  @override
  _PreventionPageState createState() => _PreventionPageState();
}

class _PreventionPageState extends State<PreventionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xFF212121)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
              child: Text(
            'PREVENTION',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          )),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 50,
                    backgroundImage: AssetImage('images/medical-mask.png'),
                  ),
                ),
                Text(
                  'Wear a mask. Save lives.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Wear a mask',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Clean your hands',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Keep a safe distance',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            ListContainer(
              cardChild: Row(
                children: [
                  Flexible(
                    child: Text(
                      'Clean your hands often. Use soap and water, or an alcohol-based hand rub.',
                      style: kListTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/washing-hands.png',
                    height: 70,
                  ),
                ],
              ),
            ),
            ListContainer(
              cardChild: Row(
                children: [
                  Flexible(
                    child: Text(
                      'Maintain a safe distance from anyone who is coughing or sneezing',
                      style: kListTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/physical.png',
                    height: 70,
                  ),
                ],
              ),
            ),
            ListContainer(
              cardChild: Row(
                children: [
                  Flexible(
                    child: Text(
                      'Wear a mask when physical distancing is not possible.',
                      style: kListTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/mask.png',
                    height: 70,
                  ),
                ],
              ),
            ),
            ListContainer(
              cardChild: Row(
                children: [
                  Flexible(
                    child: Text(
                      'Don’t touch your eyes, nose or mouth.',
                      style: kListTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/do-not-touch.png',
                    height: 70,
                  ),
                ],
              ),
            ),
            ListContainer(
              cardChild: Row(
                children: [
                  Flexible(
                    child: Text(
                      'Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.',
                      style: kListTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/cover.png',
                    height: 70,
                  ),
                ],
              ),
            ),
            ListContainer(
              cardChild: Row(
                children: [
                  Flexible(
                    child: Text(
                      'Stay home if you feel unwell.',
                      style: kListTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/stay-home.png',
                    height: 70,
                  ),
                ],
              ),
            ),
            ListContainer(
              cardChild: Row(
                children: [
                  Flexible(
                    child: Text(
                      'If you have a fever, cough and difficulty breathing, seek medical attention.',
                      style: kListTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/fever_.png',
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
