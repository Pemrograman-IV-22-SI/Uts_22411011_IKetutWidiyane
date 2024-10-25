import 'package:flutter/material.dart';
import 'package:uts_pemrograman_4_22411011_i_ketut_widiyane/input.dart';
import 'package:uts_pemrograman_4_22411011_i_ketut_widiyane/output.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: input.routeName,
      routes: {
        input.routeName: (context) => const input(),
        output.routeName: (context) => const output()
      },
    );
  }
}
