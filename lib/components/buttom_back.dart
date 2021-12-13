import 'package:flutter/material.dart';

class ButtomBack extends StatelessWidget {
  const ButtomBack({Key? key, required this.rota}) : super(key: key);
  final String rota;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Row(
      children: [
        SizedBox(
          width: mediaQuery.size.width * .03,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: FloatingActionButton(
            backgroundColor: const Color(0xFF63C4D7),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF084769),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(rota);
            },
            // ROTA = rota do botão "voltar"
          ),
        ),
      ],
    );
  }
}
