import 'package:app_gdppi/components/resultado.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ResultadoBom extends StatelessWidget {
  const ResultadoBom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return const Result(
      resultado: 'Bom',
      icon: SizedBox(
        child: Center(
          child: Icon(
            Icons.sentiment_satisfied_alt,
            size: 150,
            color: Color(0xFF084769),
          ),
        ),
      ),
    );
  }
}
