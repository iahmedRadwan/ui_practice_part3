import 'package:flutter/material.dart';
import 'package:flutter_task_2/utilities/app_router.dart';
import 'package:flutter_task_2/views/splash_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: AppRouter.routes,
    initialRoute: SplashView.routeName,
  ));
}
