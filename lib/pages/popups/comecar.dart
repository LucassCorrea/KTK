import 'package:app_gdppi/components/pop_up.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter/material.dart';

class Comecar extends StatelessWidget {
  const Comecar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return PopUp(
      margin: const EdgeInsets.symmetric(vertical: 30),
      texto: 'Opa, vamos começar?',
      botao: SizedBox(
        width: mediaQuery.size.width * .15,
        height: mediaQuery.size.height * .1,
        child: FloatingActionButton(
          elevation: 4,
          backgroundColor: const Color(0xFF63C4D7),
          child: const Icon(
            Icons.play_arrow_outlined,
            color: Color(0xFF084769),
            size: 60,
          ),
          onPressed: () {
            Navigator.of(
              context,
            ).pushNamed(Routes.TESTE_EQUIL);
          },
          // ROTA = rota do botão "voltar"
        ),
      ),
    );
  }
}
