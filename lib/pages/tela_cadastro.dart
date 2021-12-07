import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/utils/routes.dart';

class TelaCadastro extends StatelessWidget {
  const TelaCadastro({Key? key}) : super(key: key);

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
            const ButtomBack(rota: Routes.INICIO),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Cadastro',
                style: TextStyle(
                  color: const Color(0xFF084769),
                  fontWeight: FontWeight.bold,
                  fontSize: 30 * mediaQuery.textScaleFactor,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .05),
            SizedBox(
              width: mediaQuery.size.width * .8,
              child: Form(
                child: Column(
                  children: [
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
                    SizedBox(height: mediaQuery.size.height * .03),
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
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Repita a senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Instituição',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .05),
                    SizedBox(
                      width: mediaQuery.size.width * .4,
                      height: mediaQuery.size.height * .08,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushNamed(Routes.CADASTRADO);
                        },
                        child: Text('Concluir',
                            style: TextStyle(
                              fontSize: 15 * mediaQuery.textScaleFactor,
                              fontWeight: FontWeight.bold,
                            )),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .05),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
