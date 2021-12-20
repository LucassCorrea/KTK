import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:app_gdppi/components/buttom_kids.dart';
import 'package:app_gdppi/components/title.dart';
import 'package:app_gdppi/model/children.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_gdppi/controller/controlers.dart';

class ListaCriancas extends StatefulWidget {
  const ListaCriancas({Key? key}) : super(key: key);
  //final Children children;
  @override
  _ListaCriancasState createState() => _ListaCriancasState();
}

class _ListaCriancasState extends State<ListaCriancas> {
  bool _carregando = false; //Vai servir para o circulo de progresso

  @override
  //Carregando criancas
  void initState() {
    super.initState();
    Provider.of<Controlers>(context, listen: false)
        .carregarCriancas()
        .then((value) => setState(() => _carregando = false));
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Controlers>(context);
    final List<Children> criancas = provider.items;
    final mediaQuery = MediaQuery.of(context);

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleBar(
            buttom: const ButtomBack(rota: Routes.MENU),
            text: Text(
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
            child: _carregando
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        for (int i = 0; i < criancas.length; i++)
                          Column(
                            children: [
                              SizedBox(
                                width: mediaQuery.size.width * .75,
                                height: mediaQuery.size.height * .08,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(
                                      context,
                                    ).pushNamed(Routes.INF_CRIANCAS,
                                        arguments: criancas[i]);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Text(
                                    criancas[i].name,
                                    style: TextStyle(
                                      fontSize: 15 * mediaQuery.textScaleFactor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: mediaQuery.size.height * .03),
                            ],
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
