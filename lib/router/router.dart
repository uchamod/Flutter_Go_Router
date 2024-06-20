import 'package:flutter/material.dart';
import 'package:flutter_go_router/models/product_model.dart';
import 'package:flutter_go_router/pages/agepage.dart';
import 'package:flutter_go_router/pages/backpage.dart';
import 'package:flutter_go_router/pages/errorpage.dart';
import 'package:flutter_go_router/pages/homepage.dart';
import 'package:flutter_go_router/pages/login.dart';
import 'package:flutter_go_router/pages/productpage.dart';
import 'package:flutter_go_router/pages/profilepage.dart';
import 'package:flutter_go_router/pages/profilepage_child1.dart';
import 'package:flutter_go_router/pages/singleproductpage.dart';
import 'package:flutter_go_router/pages/userpage.dart';
import 'package:flutter_go_router/router/routenames.dart';
import 'package:go_router/go_router.dart';

class RouterClass {
  final router = GoRouter(
    //  initial route
    initialLocation: "/",
    //error hadling page
    errorPageBuilder: (context, state) {
      return const MaterialPage<dynamic>(child: Errorpage());
    },
    //redirect the page
    //  redirect: (context, state) {
    //     bool isUserLogin = UserData().isUserLogin;
    //     if (isUserLogin) {
    //       return "/";
    //     } else {
    //       return "/loginpage";
    //     }
    //   },
    routes: [
      //homepage

      GoRoute(
        //defult path
        name: RouteNames.home,
        path: "/",
        builder: (context, state) {
          return const Homepage();
        },
      ),
      //profile page
      GoRoute(
          name: RouteNames.profile,
          path: "/profilepage",
          builder: (context, state) {
            return const ProfilePage();
          },
          //nested routs in profile page
          routes: [
            GoRoute(
              name: RouteNames.profileChild,
              path: "child1",
              builder: (context, state) {
                return const ProfilepageChild1();
              },
            )
          ]),
      //user page
      GoRoute(
        name: RouteNames.user,
        path: "/userpage",
        builder: (context, state) {
          //add extra parameter using  map
          final String name = (state.extra as Map<String, dynamic>)["name"];
          final int age = (state.extra as Map<String, dynamic>)["age"];
          return UserPage(
            userName: name,
            userAge: age,
          );
        },
      ),
      //get the data using path variable
      //  GoRoute(
      //   name: "UserPage2",
      //   path: "/userpage/:name/:age",
      // builder: (context, state) {
      //   //add extra parameter using  map

      //   return UserPage(userName: state.pathParameters["name"]!,userAge:state.pathParameters["age"]!);
      // },),
      //agepage
      //get the data using query parameters
      GoRoute(
        path: "/age",
        name: RouteNames.agePage,
        builder: (context, state) {
          final int age = state.uri.queryParameters["age"] == null
              ? 0
              : int.parse(state.uri.queryParameters["age"]!);
          return AgePage(
            age: age,
          );
        },
      ),
      //login page
      GoRoute(
          name: "login",
          path: "/loginpage",
          builder: (context, state) {
            return const LoginPage();
          }),
      //back page
      GoRoute(
          name: "back",
          path: "/backpage",
          builder: (context, state) {
            return const BackPage();
          }),

      //router for the product page
      GoRoute(
        path: "/product",
        name: RouteNames.product,
        builder: (context, state) {
          return const ProductPage();
        },
      ),
      //single product page
      GoRoute(
        path: "/productdeatils",
        name: RouteNames.productdetails,
        builder: (context, state) {
          final Product product = state.extra as Product;
          return  SingleProductPage(
            product: product,
          );
        },
      )
    ],
  );
}
