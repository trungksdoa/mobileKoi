import 'package:flutter/material.dart';
import 'package:koi_fish_mobile/router/router.dart';

import 'component/Home.dart';




class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
