
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilepageChild1 extends StatelessWidget {
  const ProfilepageChild1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("This is ProfilePageChild1"),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)),
              onPressed: () {
                //set up the route page
                GoRouter.of(context).go("/");
              },
              child: const Text(
                "go to HomePage",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}