import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/utils/routes.dart';

class HisPontuacao extends StatelessWidget {
  const HisPontuacao({Key? key}) : super(key: key);

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
            const ButtomBack(rota: Routes.HIS_DATAS),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Histórico\n(pontuação)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF084769),
                  fontWeight: FontWeight.bold,
                  fontSize: 30 * mediaQuery.textScaleFactor,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .05),
            Column(
              children: [
                SizedBox(
                  width: mediaQuery.size.width * .85,
                  height: mediaQuery.size.height * .72,
                  child: Card(
                    color: const Color(0xFF084769),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      children: [
                        SizedBox(height: mediaQuery.size.height * .03),
                        Text(
                          'Dia 00-00-0000',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18 * mediaQuery.textScaleFactor,
                          ),
                        ),
                        SizedBox(height: mediaQuery.size.height * .02),
                        Row(
                          children: [
                            SizedBox(width: mediaQuery.size.width * .07),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Idade em meses:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18 * mediaQuery.textScaleFactor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: mediaQuery.size.height * .04),
                        SizedBox(
                          width: mediaQuery.size.width * .70,
                          height: mediaQuery.size.height * .52,
                          child: Card(
                            color: Colors.white,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: mediaQuery.size.height * .03),
                                Text(
                                  'Pontuações:',
                                  style: TextStyle(
                                    color: const Color(0xFF084769),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22 * mediaQuery.textScaleFactor,
                                  ),
                                ),
                                SizedBox(height: mediaQuery.size.height * .03),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: mediaQuery.size.width * .03,
                                          height: mediaQuery.size.height * .03,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                            width: mediaQuery.size.width * .18,
                                            child: Text(
                                              'Equil. trave',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF084769),
                                                fontSize: 18 *
                                                    mediaQuery.textScaleFactor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              '00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF084769),
                                                fontSize: 18 *
                                                    mediaQuery.textScaleFactor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width: mediaQuery.size.width * .03),
                                      ],
                                    ),
                                    SizedBox(
                                        height: mediaQuery.size.height * .03),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: mediaQuery.size.width * .03),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                            width: mediaQuery.size.width * .18,
                                            child: Text(
                                              'Saltos Monopedais',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF084769),
                                                fontSize: 18 *
                                                    mediaQuery.textScaleFactor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              '00',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF084769),
                                                fontSize: 18 *
                                                    mediaQuery.textScaleFactor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width: mediaQuery.size.width * .03),
                                      ],
                                    ),
                                    SizedBox(
                                        height: mediaQuery.size.height * .03),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: mediaQuery.size.width * .03),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                            width: mediaQuery.size.width * .18,
                                            child: Text(
                                              'Saltos\nLaterais',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF084769),
                                                fontSize: 17 *
                                                    mediaQuery.textScaleFactor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              '00',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF084769),
                                                fontSize: 18 *
                                                    mediaQuery.textScaleFactor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width: mediaQuery.size.width * .03),
                                      ],
                                    ),
                                    SizedBox(
                                        height: mediaQuery.size.height * .03),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: mediaQuery.size.width * .03),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                            width: mediaQuery.size.width * .18,
                                            child: Text(
                                              'Transf. Laterais',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF084769),
                                                fontSize: 17 *
                                                    mediaQuery.textScaleFactor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              '00',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF084769),
                                                fontSize: 18 *
                                                    mediaQuery.textScaleFactor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: mediaQuery.size.width * .03,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mediaQuery.size.height * .08,
            ),
          ],
        ),
      ),
    );
  }
}
