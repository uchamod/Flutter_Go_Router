import 'package:flutter/material.dart';
import 'package:flutter_go_router/router/routenames.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: const Text("This is homePage")),
            //go to profile page
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)),
              onPressed: () {
                //set up the route page
                //go to profile page
                GoRouter.of(context).goNamed(RouteNames.profile);
              },
              child: const Text(
                "go to ProfilePage",
                style: TextStyle(color: Colors.black),
              ),
            ),
            //go to profile child page
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)),
              onPressed: () {
                //set up the route page
                //goto the profile routepage
                GoRouter.of(context).go("/profilepage/child1");
              },
              child: const Text(
                "go to Profilechild1",
                style: TextStyle(color: Colors.black),
              ),
            ),
            //user page route 1
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                onPressed: () {
                  //set up the route page
                  //go to the userpage
                  //when have more than one parameter use a map
                  GoRouter.of(context).goNamed(
                    RouteNames.user,
                    extra: {"name": "chamod", "age": 22},
                  );
                },
                child: const Text(
                  "go to UserPage1",
                  style: TextStyle(color: Colors.black),
                )),
            //user page route2
            // ElevatedButton(
            //     style: const ButtonStyle(
            //         backgroundColor: WidgetStatePropertyAll(Colors.blue)),
            //     onPressed: () {
            //       //set up the route page
            //       //go to the userpage
            //       //when have more than one parameter use a map
            //       String name = "udara";
            //       int age = 24;
            //       GoRouter.of(context).go(
            //         "/userpage/$name/$age",

            //       );
            //     },
            //     child: const Text(
            //       "go to UserPage2",
            //       style: TextStyle(color: Colors.black),
            //     ))
            //go to agepage
            //pass the data using query parameters
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                onPressed: () {
                  //set up the route page
                  //go to the agepage
                  //when have more than one parameter use a map
                  GoRouter.of(context).goNamed(
                    RouteNames.agePage,
                    queryParameters: {"age": "30"},
                  );
                },
                child: const Text(
                  "go to agepage",
                  style: TextStyle(color: Colors.black),
                )),
            //go to backpage
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                onPressed: () {
                  //set up the route page
                  //go to the backpage
                  //route to page using push:allows to back
                  GoRouter.of(context).push("/backpage");
                },
                child: const Text(
                  "go and back",
                  style: TextStyle(color: Colors.black),
                )),
                const SizedBox(height: 40,),
                //route to the product page
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red)),
                onPressed: () {
                  //set up the route page
                  //go to the productpage
                  
                  GoRouter.of(context).pushNamed(RouteNames.product);
                },
                child: const Text(
                  "go and product page",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
