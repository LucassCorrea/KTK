import 'package:app_gdppi/components/buttom_back.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:app_gdppi/components/background.dart';
import 'package:flutter/material.dart';

class InfCriancas extends StatelessWidget {
  const InfCriancas({Key? key}) : super(key: key);

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
            const ButtomBack(rota: Routes.LISTA_CRIANCAS),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Informações\nda Criança',
                textAlign: TextAlign.center,
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
                        labelText: 'Nome do Responsável',
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
                        labelText: 'Endereço',
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
                        labelText: 'Celular',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Nota Final',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      maxLines: 5,
                      decoration: const InputDecoration(
                        labelText: 'Comentário',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .06),
                    SizedBox(
                      width: mediaQuery.size.width * .4,
                      height: mediaQuery.size.height * .08,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushNamed(Routes.LISTA_DE_TESTES);
                        },
                        child: Text('Novo Teste',
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
                    SizedBox(height: mediaQuery.size.height * .07),
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
