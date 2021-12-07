import 'package:app_gdppi/components/background.dart';
import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  final String texto;
  final Widget botao;
  final dynamic margin;

  const PopUp(
      {Key? key,
      required this.texto,
      required this.botao,
      required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: mediaQuery.size.width * .7,
            height: mediaQuery.size.height * .4,
            child: Stack(
              children: [
                Card(
                  margin: margin,
                  shadowColor: Colors.black,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xFF084769),
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: mediaQuery.size.height * .40,
                      child: Text(
                        texto, //texto
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF084769),
                          fontWeight: FontWeight.bold,
                          fontSize: 20 * mediaQuery.textScaleFactor,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: botao, //botao
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
