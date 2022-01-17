import 'package:flutter/material.dart';
import 'package:flutter_slivers/constants/constant.dart';
import 'package:flutter_slivers/pages/travel_destination_grid.dart';

import 'constant_scroll_behavior.dart';
import 'weekly_forecast_list.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      scrollBehavior: const ConstantScrollBehavior(),
      title: 'Sliver Examples',
      home: Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            stretch: true,
            onStretchTrigger: () async {
              print('Load new data!');
            },
            backgroundColor: Colors.blueGrey[900],
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                //StretchMode.fadeTitle,
                //StretchMode.blurBackground,
              ],
              title: const Text('Travel Destinations'),
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: <Color>[Colors.blueGrey[900]!, Colors.transparent],
                  ),
                ),
                child: Image.network(
                  headerImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return const SizedBox(
                    width: 100.0,
                    child: Card(
                      child: Center(child: Text('status')),
                    ),
                  );
                },
              ),
            ),
          ),
          const WeeklyForecastList(),
          const TravelDestinationGrid()
        ]),
      ),
    );
  }
}
