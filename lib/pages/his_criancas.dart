import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/utils/routes.dart';

class HistoricoCriancas extends StatefulWidget {
  const HistoricoCriancas({Key? key}) : super(key: key);

  @override
  _HistoricoCriancasState createState() => _HistoricoCriancasState();
}

class _HistoricoCriancasState extends State<HistoricoCriancas> {
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
            const ButtomBack(rota: Routes.HISTORICO),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Lista de Crianças',
                  style: TextStyle(
                    color: const Color(0xFF084769),
                    fontWeight: FontWeight.bold,
                    fontSize: 30 * mediaQuery.textScaleFactor,
                  ),
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .05),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).pushNamed(Routes.HISTORICO);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Limpar filtros',
                      style: TextStyle(
                        color: Color(0xFF084769),
                        fontWeight: FontWeight.bold,
                        fontSize: 20 * mediaQuery.textScaleFactor,
                      ),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(color: Color(0xFF084769)),
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
                      ).pushNamed(Routes.HIS_DATAS);
                    },
                    child: Text(
                      'Criança João',
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
                SizedBox(height: mediaQuery.size.height * .03),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_DATAS);
                    },
                    child: Text(
                      'Criança Maria',
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
                SizedBox(height: mediaQuery.size.height * .03),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_DATAS);
                    },
                    child: Text(
                      'Criança José',
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
                SizedBox(height: mediaQuery.size.height * .03),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_DATAS);
                    },
                    child: Text(
                      'Criança Francisca',
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
                SizedBox(height: mediaQuery.size.height * .03),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(Routes.HIS_DATAS);
                    },
                    child: Text(
                      'Criança Raimunda',
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
