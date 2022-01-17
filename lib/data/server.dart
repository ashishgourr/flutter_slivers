import 'dummy_data.dart';
import '../model/daily_forecast.dart';

class Server {
  static List<DailyForecast> getDailyForecastList() =>
      DummyData.values.toList();

  static DailyForecast getDailyForecastByID(int id) {
    assert(id >= 0 && id <= 6);
    return DummyData[id]!;
  }
}
