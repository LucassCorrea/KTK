import 'package:app_gdppi/components/pop_up.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Calculando extends StatelessWidget {
  const Calculando({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return PopUp(
      margin: const EdgeInsets.symmetric(vertical: 19),
      texto: 'Calculando resultados da avaliação...',
      botao: SizedBox(
        width: mediaQuery.size.width * .3,
        height: mediaQuery.size.height * .06,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pushNamed(Routes.RESULTADO_BOM);
          },
          child: Text('Continuar',
              style: TextStyle(
                fontSize: 14 * mediaQuery.textScaleFactor,
                fontWeight: FontWeight.bold,
              )),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
