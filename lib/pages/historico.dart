import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:app_gdppi/components/sel_data.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
  const Historico({Key? key}) : super(key: key);

  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  DateTime _selectedDate = DateTime.now();
  bool toque1 = false;
  bool toque2 = false;
  bool toque3 = false;
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
            const ButtomBack(rota: Routes.MENU),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Histórico de Testes',
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
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .08,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      suffix: Icon(Icons.search),
                      labelText: 'Pesquisa por nome...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .05),
                SizedBox(
                  width: mediaQuery.size.width * .75,
                  height: mediaQuery.size.height * .65,
                  child: Card(
                    color: const Color(0xFF084769),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(height: mediaQuery.size.height * .03),
                          Text(
                            'Faixa Etária',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22 * mediaQuery.textScaleFactor,
                            ),
                          ),
                          SizedBox(height: mediaQuery.size.height * .02),
                          Row(
                            children: [
                              SizedBox(width: mediaQuery.size.width * .03),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Faixa etária 1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18 * mediaQuery.textScaleFactor,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Checkbox(
                                    side: const BorderSide(color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    value: toque1,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        toque1 = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: mediaQuery.size.width * .03),
                            ],
                          ),
                          SizedBox(height: mediaQuery.size.height * .01),
                          Row(
                            children: [
                              SizedBox(width: mediaQuery.size.width * .03),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Faixa etária 2',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18 * mediaQuery.textScaleFactor,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Checkbox(
                                    side: const BorderSide(color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    value: toque2,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        toque2 = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: mediaQuery.size.width * .03),
                            ],
                          ),
                          SizedBox(height: mediaQuery.size.height * .01),
                          Row(
                            children: [
                              SizedBox(width: mediaQuery.size.width * .03),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Faixa etária 3',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18 * mediaQuery.textScaleFactor,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Checkbox(
                                    side: const BorderSide(color: Colors.white),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    value: toque3,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        toque3 = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(width: mediaQuery.size.width * .03),
                            ],
                          ),
                          SizedBox(height: mediaQuery.size.height * .02),
                          SizedBox(
                            height: mediaQuery.size.height * .02,
                            width: mediaQuery.size.width * .65,
                            child: const Expanded(
                              child: Card(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: mediaQuery.size.height * .02),
                          SelecionarData(
                            selectedDate: _selectedDate,
                            onDateChanged: (newDate) {
                              setState(() {
                                _selectedDate = newDate;
                              });
                            },
                          ),
                          SizedBox(height: mediaQuery.size.height * .02),
                          TextButton(
                            onPressed: () {
                              Navigator.of(
                                context,
                              ).pushNamed(Routes.HIS_CRIANCAS);
                            },
                            child: Text(
                              'Filtrar',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18 * mediaQuery.textScaleFactor,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              fixedSize: const Size(70, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * .04),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
