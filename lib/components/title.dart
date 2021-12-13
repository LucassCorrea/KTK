import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({Key? key, required this.buttom, required this.text})
      : super(key: key);
  final Widget text, buttom;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        buttom, //incluir o botão voltar
        Align(
          alignment: Alignment.center,
          child: text, //incluir o título da pág
        ),
      ],
    );
  }
}
