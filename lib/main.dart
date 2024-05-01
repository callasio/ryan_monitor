import 'package:flutter/material.dart';
import 'package:ryan_monitor/navigation.dart';

void main() {
  runApp(const MonitorAppMain());
}

class MonitorAppMain extends StatelessWidget {
  const MonitorAppMain({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Navigation(),
    );
  }
}
