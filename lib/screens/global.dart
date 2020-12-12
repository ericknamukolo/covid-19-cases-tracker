import 'package:corona/screens/prevention.dart';
import 'package:flutter/material.dart';
import 'package:corona/services/covid_service.dart';
import 'package:corona/models/global_summary.dart';
import 'package:corona/screens/global_statistics.dart';
import 'global_loading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:corona/utils/constants.dart';
import 'package:corona/screens/symptoms.dart';

CovidService covidService = CovidService();

class Global extends StatefulWidget {
  @override
  _GlobalState createState() => _GlobalState();
}

class _GlobalState extends State<Global> {
  Future<GlobalSummaryModel> summary;

  @override
  void initState() {
    super.initState();
    summary = covidService.getGlobalSummary();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Global Corona Virus Cases',
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    summary = covidService.getGlobalSummary();
                  });
                },
                child: Icon(
                  FontAwesomeIcons.syncAlt,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
        FutureBuilder(
          future: summary,
          builder: (context, snapshot) {
            if (snapshot.hasError)
              return Center(
                child: Text('An Error Occured'),
              );
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return GlobalLoading();
              default:
                return !snapshot.hasData
                    ? Center(
                        child: Text('Empty'),
                      )
                    : GlobalStatistics(
                        summary: snapshot.data,
                      );
            }
          },
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SymptomsPage()));
                },
                child: Row(
                  children: [
                    Text(
                      'SYMPTOMS',
                      style: kButtonTextStyle,
                    )
                  ],
                ),
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PreventionPage()));
                },
                child: Row(
                  children: [
                    Text(
                      'PREVENTION',
                      style: kButtonTextStyle,
                    )
                  ],
                ),
              ),
            ],
          ),
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xFF212121),
          ),
        ),
      ],
    );
  }
}
