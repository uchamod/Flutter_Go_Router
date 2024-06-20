import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Errorpage extends StatefulWidget {
  const Errorpage({super.key});

  @override
  State<Errorpage> createState() => _ErrorpageState();
}

class _ErrorpageState extends State<Errorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "PAGE NOT FOUND",
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          const Center(
            child: Text(
              "404",
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go("/");
            },
            child: const Text(
              "HomePage",
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
