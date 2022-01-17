import 'package:flutter_slivers/constants/constant.dart';
import 'package:flutter_slivers/model/daily_forecast.dart';

const Map<int, DailyForecast> DummyData = {
  0: DailyForecast(
    id: 0,
    imageId: '${baseAssetURL}assets/day_0.jpeg',
    highTemp: 32,
    lowTemp: 12,
    description: 'Partly sunny.',
  ),
  1: DailyForecast(
    id: 1,
    imageId: '${baseAssetURL}assets/day_1.jpeg',
    highTemp: 34,
    lowTemp: 23,
    description: 'Partly sunny.',
  ),
  2: DailyForecast(
    id: 2,
    imageId: '${baseAssetURL}assets/day_2.jpeg',
    highTemp: 29,
    lowTemp: 18,
    description: 'Party cloudy.',
  ),
  3: DailyForecast(
    id: 3,
    imageId: '${baseAssetURL}assets/day_3.jpeg',
    highTemp: 24,
    lowTemp: 12,
    description: 'Thunderstorms in the evening.',
  ),
  4: DailyForecast(
    id: 4,
    imageId: '${baseAssetURL}assets/day_4.jpeg',
    highTemp: 27,
    lowTemp: 22,
    description: 'Severe thunderstorm warning.',
  ),
  5: DailyForecast(
    id: 5,
    imageId: '${baseAssetURL}assets/day_5.jpeg',
    highTemp: 31,
    lowTemp: 28,
    description: 'Cloudy with showers in the morning.',
  ),
  6: DailyForecast(
    id: 6,
    imageId: '${baseAssetURL}assets/day_6.jpeg',
    highTemp: 26,
    lowTemp: 19,
    description: 'Sun throughout the day.',
  ),
};
