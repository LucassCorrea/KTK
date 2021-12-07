import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String resultado;
  final Widget icon;
  const Result({Key? key, required this.resultado, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: mediaQuery.size.height * .12),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Resultado da\nAvaliação',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF084769),
                      fontWeight: FontWeight.bold,
                      fontSize: 32 * mediaQuery.textScaleFactor,
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .05),
                const SizedBox(
                  child: Icon(
                    Icons.sentiment_satisfied_alt,
                    size: 150,
                    color: Color(0xFF084769),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .0),
                SizedBox(
                  width: mediaQuery.size.width * .50,
                  child: Text(
                    resultado,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF084769),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .03),
                Container(
                  width: mediaQuery.size.width * .85,
                  height: mediaQuery.size.height * .2,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF084769),
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'considerações sobre o desempenho da criança',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF084769),
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height * .01),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: mediaQuery.size.width * .2,
                  child: const Text(
                    'Média: ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF084769),
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  width: mediaQuery.size.width * .2,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: mediaQuery.size.width * .07,
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height * .01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        color: const Color(0xFF084769),
                        iconSize: 50,
                        icon: const Icon(Icons.save),
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushNamed(Routes.LISTA_DE_TESTES);
                        },
                      ),
                      Text(
                        'Salvar',
                        style: TextStyle(
                          fontSize: 12 * mediaQuery.textScaleFactor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 50,
                    icon: const Image(
                      image: AssetImage("assets/icons/LOGO_KTK.png"),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: mediaQuery.size.width * .35,
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height * .05),
          ],
        ),
      ),
    );
  }
}
