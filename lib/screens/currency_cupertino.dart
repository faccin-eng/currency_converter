import 'package:currency_converter/screens/converter_screen.dart';
import 'package:flutter/cupertino.dart';

class CupertinoApi extends StatefulWidget {
  const CupertinoApi({super.key});

  @override
  State<CupertinoApi> createState() => _CupertinoApi();
}

class _CupertinoApi extends State<CupertinoApi> {
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
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey3,
      navigationBar:  const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.activeBlue,
        middle: Text('Currency Converter',),
      ),
       child: Center(
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
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: TextStyle(
                    color: CupertinoColors.black,  
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                ),
                keyboardType: TextInputType.numberWithOptions(),
                placeholder: 'Por favor insira o valor em USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                            ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: CupertinoButton(
                  onPressed: convert,
                  color: CupertinoColors.black,
                  // minimumSize: ,

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

