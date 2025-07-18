import 'package:flutter/material.dart';
import 'package:provider_demo/provider_screen/presentation/count_provider_screen.dart';
import 'package:provider_demo/provider_screen/provider/cout_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
 create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        ),
        home: CountProviderScreen(),
      ),
    );

  }
}


