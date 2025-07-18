import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../provider/favreat_provider.dart';
import 'forvate_screen.dart';

class AddFabreatScreen extends StatefulWidget {
  const AddFabreatScreen({super.key});

  @override
  State<AddFabreatScreen> createState() => _AddFabreatScreenState();
}

class _AddFabreatScreenState extends State<AddFabreatScreen> {
  @override
  Widget build(BuildContext context) {
    print('________Build________'+DateTime.now().toString());
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
        itemCount: 11,
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
