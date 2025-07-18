import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider_screen/presentation/slider_provider_screen.dart';
import 'package:provider_demo/provider_screen/provider/cout_provider.dart';
import 'package:provider_demo/provider_screen/provider/slider_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
      ],
      child: MaterialApp(title: 'Flutter Demo', home: SliderProviderScreen()),
    );
  }
}
