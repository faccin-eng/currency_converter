import 'package:flutter/material.dart';

class CurrencyScreen extends StatefulWidget{
  @override
  State<CurrencyScreen> createState() => _CurrencyScreen();

   const CurrencyScreen({super.key});
}


class _CurrencyScreen extends State<CurrencyScreen>{
  double result = 0;
  String? errorText = 'Valor inválido';

  final TextEditingController textEditingController = TextEditingController();

  void convert(){
    try{ result = double.parse(textEditingController.text) * 5.23;
    setState(() {});
    } catch (e) {
      result=987654321.12;
    }
  }

  @override
  Widget build(BuildContext context){
// you can put functions inside your build function, but that is recommended only for builder functions (front end related)
// on final border we create a function to avoid duplicate code, since the same code was being used twice in the builder
    final border = OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  );
    return Scaffold(
        backgroundColor: Colors.blueGrey,
      appBar:  AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 48, 61),
        elevation: 15,
        title: Text('Currency Converter',
        style: TextStyle( color: Colors.white),
        ),
        actions: [],
        centerTitle: true,
      ),
       body: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
           children : [
              Text('R\$ ${result!=987654321.12 ? result.toStringAsFixed(2) : errorText}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: TextField(
                  controller: textEditingController,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    hoverColor : Colors.white,
                    hintText: 'Por favor insira a currência em USD',
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    prefixIcon: Icon(Icons.monetization_on),
                    prefixIconColor: Colors.white,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    enabledBorder: border,
                    focusedBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(),
                            ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: ElevatedButton(
                  onPressed: convert,
                  style: ButtonStyle(  
/*ao invés de style podemos usar simplesmente TextButton.styleFrom, onde a conversão para widget state é interna e auto
esse método é eficaz para comportamentos complexos, como mudança de estado que altera os botões
Mas para 90% dos casos é mais fácil simplesmente usar o stylefrom, de toda forma fica registrado aqui. 
*/ 
                    backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 0, 0, 0)),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    minimumSize: WidgetStatePropertyAll(Size(double.infinity,50)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  ),
                  child: Text('Converter',
                ),
                            ),
              ),
                
          ],
         ),
       ),
     );
  }
}


/*
Context is a class provided by flutter that tells the location of a particular widget
*/