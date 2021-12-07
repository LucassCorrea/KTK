import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter/material.dart';

class ButtomKids extends StatelessWidget {
  const ButtomKids({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        SizedBox(
          width: mediaQuery.size.width * .75,
          height: mediaQuery.size.height * .08,
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushNamed(Routes.INF_CRIANCAS);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: child),
        ),
        SizedBox(height: mediaQuery.size.height * .03),
      ],
    );
  }
}
