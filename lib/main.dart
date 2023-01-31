import 'home_page.dart';

void main() {
  var Colors;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Sabanal Activity 5",
    theme: ThemeData(
      primarySwatch: Colors.colors
    ),
    home: HomePage(),
  ));
}

ThemeData({required primarySwatch}) {
}

void runApp(materialApp) {
}

MaterialApp({required bool debugShowCheckedModeBanner, required String title, required theme, required HomePage home}) {
}