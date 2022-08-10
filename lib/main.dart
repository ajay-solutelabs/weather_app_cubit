import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/feature/cubit/weather_cubit.dart';
import 'package:weather_app/feature/pages/weather_search_page.dart';
import 'package:weather_app/feature/repository/weather_repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(FakeWeatherRepository()),
      child: MaterialApp(
        title: 'Material App',
        home: WeatherSearchPage(),
      ),
    );
  }
}