



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile_ui/profile_page.dart';


void main(){
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF009588),
    ),
  );

  runApp(const Home());
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: ProfilePage());
  }
}
