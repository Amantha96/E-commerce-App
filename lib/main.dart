import 'package:ecommerce_app/controllers/mainscreen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Views/ui/mainScreen.dart';

void main() {


  runApp(MultiProvider(
    providers:[
      ChangeNotifierProvider(create: (context)=>MainScreenNotifier())
    ],
    
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
 
      home:  MainScreen(),
    );
  }
}


