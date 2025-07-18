import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider_screen/provider/slider_provider.dart';

class SliderProviderScreen extends StatefulWidget {
  const SliderProviderScreen({super.key});

  @override
  State<SliderProviderScreen> createState() => _SliderProviderScreenState();
}

class _SliderProviderScreenState extends State<SliderProviderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(
            builder: (context, value1, child) {
              return Center(
                child: Slider(
                  value: value1.value,
                  onChanged: (onchnage) {
                    value1.setValue(onchnage);
                  },
                ),
              );
            },
          ),

          Consumer<SliderProvider>(
            builder: (context, vlaue1, child) {
              return Center(
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.blue.withOpacity(vlaue1.value),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.red.withOpacity(vlaue1.value),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
