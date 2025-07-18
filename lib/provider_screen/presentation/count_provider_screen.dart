
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider_screen/provider/cout_provider.dart';
class CountProviderScreen extends StatefulWidget {
  const CountProviderScreen({super.key});

  @override
  State<CountProviderScreen> createState() => _CountProviderScreenState();
}

class _CountProviderScreenState extends State<CountProviderScreen> {
  @override
  void initState() {
    // TODO: implement initState
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer){
      countProvider.setCount();
    });
  }
    @override
  Widget build(BuildContext context) {

 if (kDebugMode) {
   print('_________Build MY App__________');
 }
 final countProvider = Provider.of<CountProvider>(context,listen: false);
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Consumer<CountProvider>(builder: (context,value,child){
                return           Center(
                  child: Text( value.count.toString(),style: TextStyle(fontSize: 44),),
                );
              }),
          Text(DateTime.now().toString())
        ],
      ),
     floatingActionButton: FloatingActionButton(onPressed: (){
      countProvider.setCount();
      }),
    );
  }
}
