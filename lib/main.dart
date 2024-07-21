import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/home_page.dart';
import 'package:providerapp/provider/animal_provider.dart';

void main() {
  runApp(ProviderExample());
}

class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context)=> PerritoProvider(),
        )
    ],
    child: MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
    );
  }
}