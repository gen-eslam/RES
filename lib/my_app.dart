import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restorant/core/routes/app_router.dart';
import 'package:restorant/core/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: Routes.splashScreen, 
      onGenerateRoute: AppRouter.generateRoute,

    );
  }
}