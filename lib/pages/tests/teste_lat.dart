import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/utils/routes.dart';

class TesteLat extends StatefulWidget {
  const TesteLat({Key? key}) : super(key: key);

  @override
  State<TesteLat> createState() => _TesteLatState();
}

class _TesteLatState extends State<TesteLat> {
  double _currentSliderValue = 0;

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
                SizedBox(height: mediaQuery.size.height * .05),
                const ButtomBack(rota: Routes.LISTA_DE_TESTES),
                SizedBox(height: mediaQuery.size.height * .02),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Saltos Laterais',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF084769),
                      fontWeight: FontWeight.bold,
                      fontSize: 30 * mediaQuery.textScaleFactor,
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .05),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF084769),
                      width: 3,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  width: mediaQuery.size.width * .72,
                  child: Center(
                    child: Row(
                      children: [
                        IconButton(
                          iconSize: 40,
                          color: const Color(0xFF084769),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.play_arrow,
                          ),
                        ),
                        Slider.adaptive(
                          activeColor: const Color(0xFF084769),
                          inactiveColor: Colors.grey[350],
                          value: _currentSliderValue,
                          onChanged: (value) {
                            setState(
                              () {
                                _currentSliderValue = value;
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .05),
                SizedBox(
                  width: mediaQuery.size.width * .44,
                  child: Text(
                    'Saltar o máximo de vezes possíveis de um lado para o outro por 15 segundos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF084769),
                      fontSize: 27 * mediaQuery.textScaleFactor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height * .09),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(flex: 7),
                SizedBox(
                  width: mediaQuery.size.width * .2,
                  child: Text(
                    'Nota: ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF084769),
                      fontSize: 22 * mediaQuery.textScaleFactor,
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
                const Spacer(flex: 1),
              ],
            ),
            SizedBox(height: mediaQuery.size.height * .05),
            SizedBox(
              width: mediaQuery.size.width * .37,
              height: mediaQuery.size.height * .08,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.TESTE_TRANSF);
                },
                child: Text(
                  'Avançar',
                  style: TextStyle(
                    fontSize: 16 * mediaQuery.textScaleFactor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .05),
          ],
        ),
      ),
    );
  }
}
