import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/utils/routes.dart';

class RecSenha extends StatelessWidget {
  const RecSenha({Key? key}) : super(key: key);

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
            const ButtomBack(rota: Routes.LOGIN),
            SizedBox(height: mediaQuery.size.height * .05),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Recuperação\nde Senha',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF084769),
                  fontWeight: FontWeight.bold,
                  fontSize: 30 * mediaQuery.textScaleFactor,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * .12),
            SizedBox(
              width: mediaQuery.size.width * .8,
              child: Form(
                child: Column(
                  children: [
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
                    SizedBox(height: mediaQuery.size.height * .04),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Confirmar e-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.height * .12),
                    SizedBox(
                      width: mediaQuery.size.width * .4,
                      height: mediaQuery.size.height * .08,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushNamed(Routes.NOVA_SENHA);
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.size.height * .07,
            ),
            IconButton(
              iconSize: 50,
              icon: const Image(
                image: AssetImage("assets/icons/LOGO_KTK.png"),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
