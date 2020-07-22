import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social/blocs/home/home_bloc.dart';
import 'package:flutter_social/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<HomeBloc>(
        create: (_) => HomeBloc(),
        child: HomeScreen(),
      ),
    );
  }
}
