import 'package:app_gdppi/components/background.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/utils/routes.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: mediaQuery.size.height * .05),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  backgroundColor: const Color(0xFF63C4D7),
                  child: const Icon(
                    Icons.logout,
                    color: Color(0xFF084769),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.INICIO);
                  },
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .01),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: const Color(0xFF084769),
                    fontWeight: FontWeight.bold,
                    fontSize: 42 * mediaQuery.textScaleFactor,
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .03),
            Column(
              children: [
                IconButton(
                  iconSize: 75,
                  color: const Color(0xFF084769),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.ADD_CRIANCA);
                  },
                  icon: const Image(
                    color: Color(0xFF084769),
                    image: AssetImage("assets/icons/user.png"),
                  ),
                ),
                Text(
                  'Add. criança',
                  style: TextStyle(
                    fontSize: 16 * mediaQuery.textScaleFactor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: mediaQuery.size.height * .05),
            Column(
              children: [
                IconButton(
                  iconSize: 75,
                  color: const Color(0xFF084769),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.LISTA_CRIANCAS);
                  },
                  icon: const Image(
                    color: Color(0xFF084769),
                    image: AssetImage("assets/icons/lista.png"),
                  ),
                ),
                Text(
                  'Resultados',
                  style: TextStyle(
                    fontSize: 16 * mediaQuery.textScaleFactor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: mediaQuery.size.height * .05),
            Column(
              children: [
                IconButton(
                  iconSize: 75,
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.HISTORICO);
                  },
                  icon: const Image(
                    color: Color(0xFF084769),
                    image: AssetImage("assets/icons/historico.png"),
                  ),
                ),
                Text(
                  'Histórico',
                  style: TextStyle(
                    fontSize: 16 * mediaQuery.textScaleFactor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
