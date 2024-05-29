import 'package:flutter/material.dart';
import 'package:gradu_go/src/presentation/home/home_page.dart';

final class GraduGoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Gradu Go',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 18),
            bodyLarge: TextStyle(fontSize: 20),
            labelLarge: TextStyle(fontSize: 18),
            titleMedium: TextStyle(fontSize: 18),
          ),
        ),
        home: HomePage(),
      );
}
