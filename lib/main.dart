import 'package:flutter/material.dart';
import 'package:recipes_hub/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'RecipeHub',
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}