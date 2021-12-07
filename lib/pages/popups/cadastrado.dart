import 'package:../app_gdppi/utils/routes.dart';
import 'package:app_gdppi/components/pop_up.dart';
import 'package:flutter/material.dart';

class Cadastrado extends StatelessWidget {
  const Cadastrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return PopUp(
      margin: const EdgeInsets.symmetric(vertical: 19),
      texto: 'Enviado para o administrador. Aguarde o e-mail',
      botao: SizedBox(
        width: mediaQuery.size.width * .3,
        height: mediaQuery.size.height * .06,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pushNamed(Routes.LOGIN);
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
