import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:app_gdppi/components/title.dart';
import 'package:flutter/material.dart';
import 'package:../app_gdppi/utils/routes.dart';

class AddCrianca extends StatefulWidget {
  const AddCrianca({Key? key}) : super(key: key);

  @override
  _AddCriancaState createState() => _AddCriancaState();
}

class _AddCriancaState extends State<AddCrianca> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleBar(
            text: Text(
              'Registro Infantil',
              style: TextStyle(
                color: const Color(0xFF084769),
                fontWeight: FontWeight.bold,
                fontSize: 30 * mediaQuery.textScaleFactor,
              ),
            ),
            buttom: const ButtomBack(
              rota: Routes.MENU,
            ),
          ),
          SizedBox(height: mediaQuery.size.height * .03),
          SizedBox(
            height: mediaQuery.size.height * .60,
            width: mediaQuery.size.width * .8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF63C4D7),
                            child: Icon(
                              Icons.add_photo_alternate,
                              color: Color(0xFF084769),
                              size: 75,
                            ),
                            radius: 50,
                          ),
                        ),
                        SizedBox(height: mediaQuery.size.height * .02),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Nome Completo',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mediaQuery.size.height * .02),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Data de Nascimento',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mediaQuery.size.height * .02),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Nome do Resposável',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mediaQuery.size.height * .02),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Endereço',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mediaQuery.size.height * .02),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Celular',
                            prefixText: '+55',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mediaQuery.size.height * .02),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(
                              context,
                            ).pushNamed(Routes.REGISTRO_CONCLUIDO);
                          },
                          child: Text(
                            'Finalizar',
                            style: TextStyle(
                              fontSize: 15 * mediaQuery.textScaleFactor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: mediaQuery.size.height * .02),
                      ],
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
