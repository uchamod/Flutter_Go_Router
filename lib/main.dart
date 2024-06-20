import 'package:flutter/material.dart';
import 'package:flutter_go_router/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //link the router class to the material app
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      //config the routercalss and direct to the homepage
      routerConfig: RouterClass().router,
    );
  }
}
