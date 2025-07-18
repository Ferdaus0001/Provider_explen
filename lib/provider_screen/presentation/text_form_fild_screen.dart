import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider_screen/provider/text_form_fild_provider.dart';


class TextFormFildProviderScreen extends StatelessWidget {
  const TextFormFildProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TextFildProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value) => provider.setEmail(value),
              decoration: InputDecoration(
                hintText: 'email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),


            const SizedBox(height: 16),
            TextFormField(
              onChanged: (value) => provider.setPasswrod(value),
              decoration: InputDecoration(
                hintText: 'password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              onChanged: (value) => provider.setNumber(value),
              decoration: InputDecoration(
                hintText: 'phone',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text('Email: ${provider.email}'),
            Text('Password: ${provider.password}'),
            Text('Phone: ${provider.number}'),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print('Email: ${provider.email}');
                }
                print('Password: ${provider.password}');
                print('Phone: ${provider.number}');
              },
              child: Text('Sign in'),
            ),
          ],
          
        ),
      ),
    );
  }
}
