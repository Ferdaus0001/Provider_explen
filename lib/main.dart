import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider_screen/presentation/add_fabreat_screen.dart';

import 'package:provider_demo/provider_screen/provider/cout_provider.dart';
import 'package:provider_demo/provider_screen/provider/favreat_provider.dart';
import 'package:provider_demo/provider_screen/provider/slider_provider.dart';
import 'package:provider_demo/provider_screen/provider/text_form_fild_provider.dart';

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
        ChangeNotifierProvider(create: (_) => TextFildProvider()),
        ChangeNotifierProvider(create: (_) => FavratProvider()),
      ],
      child: GetMaterialApp(title: 'Flutter Demo', home: AddFabreatScreen()),
    );
  }
}
