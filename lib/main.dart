import 'Utils/imports.dart';


// This is the Main ( Starting point of the app ). Where you can define 
// the global settings for your app. In this example we have
// not covered that. As it could be overwhelming. But its always a 
// good practice that the settings which are most commonly used in 
// your project should be defined in the apps globel settings so you dont 
// have to define them again and again. ForExample : Text colors, Primary Color, Text FontFamily, etc
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Eat\'s',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
