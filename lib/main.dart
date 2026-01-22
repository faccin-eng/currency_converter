import 'package:currency_converter/screens/converter_screen.dart'; 
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/* types of widgets:

1. State less Widget
  it won't change once the app is launched

2. StatefulWidget
  can display the button counter number, it changes when user interacts with it

3. InheritedWidget (not using right now)
*/

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     home: CurrencyScreen()
   );
  }

}