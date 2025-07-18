import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../provider/favreat_provider.dart';

class ForvateScreen extends StatefulWidget {
  const ForvateScreen({super.key});

  @override
  State<ForvateScreen> createState() => _ForvateScreenState();
}

class _ForvateScreenState extends State<ForvateScreen> {
  @override
  Widget build(BuildContext context) {
    print('________Build________'+DateTime.now().toString());
    final favortiProvier = Provider.of<FavratProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Get.to(ForvateScreen());
          }, icon: Icon(Icons.favorite,color: Colors.red,))
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 31, horizontal: 11),
        itemCount: favortiProvier.selectedItem.length,
        separatorBuilder: (context, index) => const SizedBox(height: 11),
        itemBuilder: (context, index) {
          return Consumer<FavratProvider>(
            builder: (context, value, child) {
              final isSelected = value.selectedItem.contains(index);
              return ListTile(
                onTap: () {
                  value.getSeleatIcon(index);
                },
                title: const Text('Ferdasu'),
                subtitle: const Text('My name is Ferdasu'),
                trailing: Icon(
                  isSelected ? Icons.favorite : Icons.favorite_border,
                  color: isSelected ? Colors.red : Colors.grey,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
