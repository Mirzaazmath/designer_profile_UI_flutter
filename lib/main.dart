import 'package:desginer_profile/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp( const MyApp());
  });

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xff384357),

      ),
      home: HomeScreen(),
    );
  }
}
