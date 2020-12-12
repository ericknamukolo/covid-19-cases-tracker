import 'package:flutter/material.dart';
import 'package:corona/models/country_summary.dart';
import 'package:corona/utils/constants.dart';
import 'package:corona/models/time_series_cases.dart';
import 'package:corona/screens/chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'chart.dart';

class CountryStatistics extends StatelessWidget {
  final List<CountrySummaryModel> summaryList;

  CountryStatistics({@required this.summaryList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCard(
          "CONFIRMED",
          summaryList[summaryList.length - 1].confirmed,
          kConfirmedColor,
          "ACTIVE",
          summaryList[summaryList.length - 1].active,
          kActiveColor,
        ),
        buildCard(
          "RECOVERED",
          summaryList[summaryList.length - 1].recovered,
          kRecoveredColor,
          "DEATHS",
          summaryList[summaryList.length - 1].death,
          kDeathColor,
        ),
      ],
    );
  }

  Widget buildCard(String leftTitle, int leftValue, Color leftColor,
      String rightTitle, int rightValue, Color rightColor) {
    return Card(
      elevation: 1,
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //BS RIGHT HERE
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  leftTitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "Total",
                  style: TextStyle(
                    color: leftColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  leftValue.toString().replaceAllMapped(reg, mathFunc),
                  style: TextStyle(
                    color: leftColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  rightTitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  "Total",
                  style: TextStyle(
                    color: rightColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  rightValue.toString().replaceAllMapped(reg, mathFunc),
                  style: TextStyle(
                    color: rightColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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

Widget buildCardChart(List<CountrySummaryModel> summaryList) {
  return Card(
    elevation: 1,
    child: Container(
      height: 190,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Chart(
        _createData(summaryList),
        animate: false,
      ),
    ),
  );
}

List<charts.Series<TimeSeriesCases, DateTime>> _createData(
    List<CountrySummaryModel> summaryList) {
  List<TimeSeriesCases> confirmedData = [];
  List<TimeSeriesCases> activeData = [];
  List<TimeSeriesCases> recoveredData = [];
  List<TimeSeriesCases> deathData = [];

  for (var item in summaryList) {
    confirmedData.add(TimeSeriesCases(item.date, item.confirmed));
    activeData.add(TimeSeriesCases(item.date, item.active));
    recoveredData.add(TimeSeriesCases(item.date, item.recovered));
    deathData.add(TimeSeriesCases(item.date, item.death));
  }

  return [
    new charts.Series<TimeSeriesCases, DateTime>(
      id: 'Confirmed',
      colorFn: (_, __) => charts.ColorUtil.fromDartColor(kConfirmedColor),
      domainFn: (TimeSeriesCases cases, _) => cases.time,
      measureFn: (TimeSeriesCases cases, _) => cases.cases,
      data: confirmedData,
    ),
    new charts.Series<TimeSeriesCases, DateTime>(
      id: 'Active',
      colorFn: (_, __) => charts.ColorUtil.fromDartColor(kActiveColor),
      domainFn: (TimeSeriesCases cases, _) => cases.time,
      measureFn: (TimeSeriesCases cases, _) => cases.cases,
      data: activeData,
    ),
    new charts.Series<TimeSeriesCases, DateTime>(
      id: 'Recovered',
      colorFn: (_, __) => charts.ColorUtil.fromDartColor(kRecoveredColor),
      domainFn: (TimeSeriesCases cases, _) => cases.time,
      measureFn: (TimeSeriesCases cases, _) => cases.cases,
      data: recoveredData,
    ),
    new charts.Series<TimeSeriesCases, DateTime>(
      id: 'Death',
      colorFn: (_, __) => charts.ColorUtil.fromDartColor(kDeathColor),
      domainFn: (TimeSeriesCases cases, _) => cases.time,
      measureFn: (TimeSeriesCases cases, _) => cases.cases,
      data: deathData,
    ),
  ];
}
