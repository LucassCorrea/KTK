import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:app_gdppi/components/buttom_kids.dart';
import 'package:app_gdppi/model/children.dart';
import 'package:app_gdppi/model/children_data.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter/material.dart';

class ListaCriancas extends StatefulWidget {
  const ListaCriancas({Key? key}) : super(key: key);

  @override
  _ListaCriancasState createState() => _ListaCriancasState();
}

class _ListaCriancasState extends State<ListaCriancas> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final List criancas = dataChildren;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: mediaQuery.size.height * .02),
          const ButtomBack(rota: Routes.MENU),
          SizedBox(height: mediaQuery.size.height * .02),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Lista de Crianças',
              style: TextStyle(
                color: const Color(0xFF084769),
                fontWeight: FontWeight.bold,
                fontSize: 30 * mediaQuery.textScaleFactor,
              ),
            ),
          ),
          SizedBox(height: mediaQuery.size.height * .03),
          SizedBox(
            height: mediaQuery.size.height * .60,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < criancas.length; i++)
                    ButtomKids(
                      child: Text(
                        criancas[i].name,
                        style: TextStyle(
                          fontSize: 15 * mediaQuery.textScaleFactor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(height: mediaQuery.size.height * .03),
          IconButton(
            iconSize: 50,
            icon: const Image(
              image: AssetImage("assets/icons/LOGO_KTK.png"),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
