import 'package:currency_converter/screens/converter_screen.dart';
import 'package:currency_converter/screens/currency_cupertino.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyCupertinoApp());
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
   return const CupertinoApp(
     home: CupertinoApi(),
   );
  }

}


class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoApi(),
    );
  }
}