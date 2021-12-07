import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:flutter/material.dart';
import 'package:../app_gdppi/utils/routes.dart';

class ListaTestes extends StatelessWidget {
  const ListaTestes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: mediaQuery.size.height * .05),
            const ButtomBack(rota: Routes.INF_CRIANCAS),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Testes',
                style: TextStyle(
                  color: const Color(0xFF084769),
                  fontWeight: FontWeight.bold,
                  fontSize: 30 * mediaQuery.textScaleFactor,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .10),
            Column(
              children: [
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.COMECAR);
                    },
                    child: Text(
                      'Equilíbrio na trave',
                      style: TextStyle(
                        fontSize: 15 * mediaQuery.textScaleFactor,
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
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.TESTE_MONO);
                    },
                    child: Text(
                      'Saltos monopedais',
                      style: TextStyle(
                        fontSize: 15 * mediaQuery.textScaleFactor,
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
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.TESTE_LAT);
                    },
                    child: Text(
                      'Saltos laterais',
                      style: TextStyle(
                        fontSize: 15 * mediaQuery.textScaleFactor,
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
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.TESTE_TRANSF);
                    },
                    child: Text(
                      'Transferências laterais',
                      style: TextStyle(
                        fontSize: 15 * mediaQuery.textScaleFactor,
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
                SizedBox(height: mediaQuery.size.height * .13),
                IconButton(
                  iconSize: 50,
                  icon: const Image(
                    image: AssetImage("assets/icons/LOGO_KTK.png"),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
