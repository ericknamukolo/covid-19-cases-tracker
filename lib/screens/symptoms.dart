import 'package:flutter/material.dart';
import 'package:corona/utils/constants.dart';

class SymptomsPage extends StatefulWidget {
  @override
  _SymptomsPageState createState() => _SymptomsPageState();
}

class _SymptomsPageState extends State<SymptomsPage> {
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
              'SYMPTOMS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            )),
          ),
          body: ListView(
            // This next line does the trick.
            scrollDirection: Axis.vertical,
            children: <Widget>[
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
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'Seek immediate medical attention if you have serious symptoms.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fever',
                      style: kListTextStyle,
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Image.asset(
                      'images/fever_symp.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'dry cough',
                      style: kListTextStyle,
                    ),
                    Image.asset(
                      'images/cough_symp.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'tiredness',
                      style: kListTextStyle,
                    ),
                    Image.asset(
                      'images/tiredness.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              Center(
                  child: Text(
                'Less common symptoms',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'aches and pains',
                      style: kListTextStyle,
                    ),
                    Image.asset(
                      'images/sore-throat.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'diarrhea',
                      style: kListTextStyle,
                    ),
                    Image.asset(
                      'images/diarrhea.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'conjunctivitis',
                      style: kListTextStyle,
                    ),
                    Image.asset(
                      'images/redness.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'headache',
                      style: kListTextStyle,
                    ),
                    Image.asset(
                      'images/headache.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'loss of taste or smell',
                      style: kListTextStyle,
                    ),
                    Image.asset(
                      'images/inhale.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'a rash on skin, or discolouration of fingers or toes',
                        style: kListTextStyle,
                      ),
                    ),
                    Image.asset(
                      'images/rash.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              Center(
                  child: Text(
                'Serious symptoms',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'difficulty breathing or shortness of breath',
                        style: kListTextStyle,
                      ),
                    ),
                    Image.asset(
                      'images/difficulty-breathing.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'chest pain or pressure',
                      style: kListTextStyle,
                    ),
                    Image.asset(
                      'images/chest-pain.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
              ListContainer(
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'loss of speech or movement',
                        style: kListTextStyle,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'images/talking.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class ListContainer extends StatelessWidget {
  ListContainer({@required this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      height: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF323232),
      ),
    );
  }
}
