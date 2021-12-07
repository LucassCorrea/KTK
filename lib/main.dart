import 'package:app_gdppi/model/model_testes.dart';
import 'package:app_gdppi/pages/add_crianca.dart';
import 'package:app_gdppi/pages/popups/calculando.dart';
import 'package:app_gdppi/pages/popups/comecar.dart';
import 'package:app_gdppi/pages/his_criancas.dart';
import 'package:app_gdppi/pages/his_datas.dart';
import 'package:app_gdppi/pages/his_pontuacao.dart';
import 'package:app_gdppi/pages/historico.dart';
import 'package:app_gdppi/pages/inf_criancas.dart';
import 'package:app_gdppi/pages/lista_criancas.dart';
import 'package:app_gdppi/pages/popups/rec_senha.dart';
import 'package:app_gdppi/pages/popups/registro_concluido.dart';
import 'package:app_gdppi/pages/rec_senha.dart';
import 'package:app_gdppi/pages/results/resultado_bom.dart';
import 'package:app_gdppi/pages/tests/listas_de_testes.dart';
import 'package:app_gdppi/pages/tests/pagina_teste.dart';
import 'package:app_gdppi/pages/tests/teste_equil.dart';
import 'package:app_gdppi/pages/tests/teste_lat.dart';
import 'package:app_gdppi/pages/tests/teste_mono.dart';
import 'package:app_gdppi/pages/tests/teste_transf.dart';
import 'package:app_gdppi/pages/popups/cadastrado.dart';
import 'package:app_gdppi/pages/inicio.dart';
import 'package:app_gdppi/pages/menu.dart';
import 'package:app_gdppi/pages/tela_cadastro.dart';
import 'package:app_gdppi/pages/tela_login.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale('pt', 'BR')],
      title: 'Flutter Demo',
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: const Color(0xFF084769),
          secondary: Colors.white,
        ),
        textTheme: tema.textTheme.apply(
          fontSizeFactor: 1.0,
          fontFamily: 'Lato',
          bodyColor: const Color(0xFF084769),
          displayColor: const Color(0xFF3C7391),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.INICIO: (context) => const Inicio(),
        Routes.LOGIN: (context) => const TelaLogin(),
        Routes.MENU: (context) => const Menu(),
        Routes.CADASTRO: (context) => const TelaCadastro(),
        Routes.CADASTRADO: (context) => const Cadastrado(),
        Routes.ADD_CRIANCA: (context) => const AddCrianca(),
        Routes.REGISTRO_CONCLUIDO: (context) => const RegistroConcluido(),
        Routes.LISTA_CRIANCAS: (context) => const ListaCriancas(),
        Routes.HISTORICO: (context) => const Historico(),
        Routes.HIS_CRIANCAS: (context) => const HistoricoCriancas(),
        Routes.HIS_DATAS: (context) => const HisData(),
        Routes.HIS_PONTUACAO: (context) => const HisPontuacao(),
        Routes.INF_CRIANCAS: (context) => const InfCriancas(),
        Routes.LISTA_DE_TESTES: (context) => const ListaTestes(),
        Routes.COMECAR: (context) => const Comecar(),
        Routes.TESTE_MONO: (context) => const TesteMono(),
        Routes.TESTE_EQUIL: (context) => const TesteEquil(),
        Routes.TESTE_LAT: (context) => const TesteLat(),
        Routes.RESULTADO_BOM: (context) => const ResultadoBom(),
        Routes.TESTE_TRANSF: (context) => const TesteTransf(),
        Routes.CALCULANDO: (context) => const Calculando(),
        Routes.REC_SENHA: (context) => const RecSenha(),
        Routes.NOVA_SENHA: (context) => const NewPassword(),
      },
    );
  }
}
