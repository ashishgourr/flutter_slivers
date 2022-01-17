import 'package:flutter/material.dart';
import 'package:flutter_slivers/model/daily_forecast.dart';

import '../data/server.dart';

class WeeklyForecastList extends StatelessWidget {
  const WeeklyForecastList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime currentDate = DateTime.now();
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final DailyForecast dailyForecast =
              Server.getDailyForecastByID(index);
          return Card(
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 80.0,
                  width: 80.0,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      DecoratedBox(
                        position: DecorationPosition.foreground,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.grey[800]!,
                              Colors.transparent
                            ],
                          ),
                        ),
                        child: Image.network(
                          dailyForecast.imageId,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Text(
                          dailyForecast.getDate(currentDate.day).toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          dailyForecast.getWeekday(currentDate.weekday),
                          style: textTheme.headline6,
                        ),
                        const SizedBox(height: 5.0),
                        Text(dailyForecast.description),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '${dailyForecast.highTemp} | ${dailyForecast.lowTemp} C',
                    style: textTheme.subtitle2,
                  ),
                ),
              ],
            ),
          );
        },
        childCount: 7,
      ),
    );
  }
}
