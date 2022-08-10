part of 'weather_cubit.dart';

@immutable
abstract class WeatherState extends Equatable{}

class WeatherInitial extends WeatherState {
  WeatherInitial();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WeatherLoading extends WeatherState {
  WeatherLoading();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded(this.weather);

  @override
  List<Object> get props => [weather];
}

class WeatherError extends WeatherState {
  final String message;
  WeatherError(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

