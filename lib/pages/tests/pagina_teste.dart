import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:app_gdppi/components/comp_audio.dart';
import 'package:app_gdppi/model/model_testes.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter/material.dart';

class PaginaTeste extends StatelessWidget {
  final ModelTestes testes;
  PaginaTeste(this.testes);

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
                    testes.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF084769),
                      fontWeight: FontWeight.bold,
                      fontSize: 30 * mediaQuery.textScaleFactor,
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .05),
                const CompAudio(),
                SizedBox(height: mediaQuery.size.height * .05),
                SizedBox(
                  width: mediaQuery.size.width * .46,
                  child: Text(
                    testes.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF084769),
                      fontSize: 27 * mediaQuery.textScaleFactor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: mediaQuery.size.height * .05),
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
                  Navigator.of(context).pushNamed(Routes.TESTE_MONO);
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
