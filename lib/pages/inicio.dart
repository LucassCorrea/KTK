import 'package:app_gdppi/components/background.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/utils/routes.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: mediaQuery.size.height * .12),
                Center(
                  child: IconButton(
                      iconSize: 120,
                      onPressed: () {},
                      icon: const Image(
                          image: AssetImage("assets/icons/LOGO_KTK.png"))),
                ),
                SizedBox(height: mediaQuery.size.height * .05),
                Text(
                  'Teste de Coordenação \n'
                  'Motora para Crianças',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30 * mediaQuery.textScaleFactor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .06),
                Column(
                  children: [
                    SizedBox(
                      width: 220,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routes.LOGIN);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 15 * mediaQuery.textScaleFactor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .02),
                    SizedBox(
                      width: 220,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routes.CADASTRO);
                        },
                        child: Text('Cadastro',
                            style: TextStyle(
                              fontSize: 15 * mediaQuery.textScaleFactor,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF084769),
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: 50,
                          icon: const Image(
                              image: AssetImage("assets/icons/logo_gdppi.png")),
                          onPressed: () {},
                        ),
                        IconButton(
                          iconSize: 50,
                          icon: const Image(
                              image: AssetImage("assets/icons/logo_ifce.png")),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
