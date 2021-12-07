import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/utils/routes.dart';

class HisData extends StatefulWidget {
  const HisData({Key? key}) : super(key: key);

  @override
  _HisDataState createState() => _HisDataState();
}

class _HisDataState extends State<HisData> {
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
            const ButtomBack(rota: Routes.HIS_CRIANCAS),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Histórico',
                style: TextStyle(
                  color: const Color(0xFF084769),
                  fontWeight: FontWeight.bold,
                  fontSize: 30 * mediaQuery.textScaleFactor,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .08),
            Column(
              children: [
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_PONTUACAO);
                    },
                    child: Text(
                      'Dia 00-00-0000',
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
                SizedBox(height: mediaQuery.size.height * .04),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_PONTUACAO);
                    },
                    child: Text(
                      'Dia 00-00-0000',
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
                SizedBox(height: mediaQuery.size.height * .04),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_PONTUACAO);
                    },
                    child: Text(
                      'Dia 00-00-0000',
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
                SizedBox(height: mediaQuery.size.height * .04),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_PONTUACAO);
                    },
                    child: Text(
                      'Dia 00-00-0000',
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
                SizedBox(height: mediaQuery.size.height * .04),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_PONTUACAO);
                    },
                    child: Text(
                      'Dia 00-00-0000',
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
                SizedBox(height: mediaQuery.size.height * .09),
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
