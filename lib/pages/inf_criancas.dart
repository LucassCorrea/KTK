import 'package:app_gdppi/components/buttom_back.dart';
import 'package:app_gdppi/components/title.dart';
import 'package:app_gdppi/model/children.dart';
import 'package:app_gdppi/utils/routes.dart';
import 'package:app_gdppi/components/background.dart';
import 'package:flutter/material.dart';
import 'package:app_gdppi/controller/controlers.dart';
import 'package:provider/provider.dart';

class InfCriancas extends StatefulWidget {
  const InfCriancas({Key? key}) : super(key: key);

  @override
  State<InfCriancas> createState() => _InfCriancasState();
}

class _InfCriancasState extends State<InfCriancas> {
  final _formKey = GlobalKey<FormState>(); //Chave Global do formulário
  final _formData = Map<String, Object>(); //Armazena os valores dos formulários

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_formData.isEmpty) {
      final arg = ModalRoute.of(context)?.settings.arguments;

      if (arg != null) {
        final children = arg as Children;
        _formData['id'] = children.id;
        _formData['name'] = children.name;
        _formData['nascimento'] = children.date;
        _formData['responsavel'] = children.responsible;
        _formData['endereco'] = children.adress;
        _formData['contato'] = children.contate;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleBar(
            buttom: const ButtomBack(
              rota: Routes.LISTA_CRIANCAS,
            ),
            text: Text(
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
            height: mediaQuery.size.height * .6,
            width: mediaQuery.size.width * .8,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      enabled: false,
                      initialValue: _formData['name']?.toString(),
                      decoration: const InputDecoration(
                        labelText: 'Nome Completo',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      onSaved: (name) => _formData['name'] = name ?? '',
                      validator: (_name) {
                        final name = _name ?? '';
                        if (name.trim().isEmpty) {
                          //Verificar nos espaços
                          return 'O nome é obrigatório';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      initialValue: _formData['nascimento']?.toString(),
                      decoration: const InputDecoration(
                        labelText: 'Data de Nascimento',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      onSaved: (nascimento) =>
                          _formData['nascimento'] = nascimento ?? '',
                      validator: (_nascimento) {
                        final nascimento = _nascimento ?? '';
                        if (nascimento.trim().isEmpty) {
                          //Verificar nos espaços
                          return 'A data de nascimento é obrigatória';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      initialValue: _formData['responsavel']?.toString(),
                      decoration: const InputDecoration(
                        labelText: 'Nome do Responsável',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      onSaved: (responsavel) =>
                          _formData['responsavel'] = responsavel ?? '',
                      validator: (_responsavel) {
                        final responsavel = _responsavel ?? '';
                        if (responsavel.trim().isEmpty) {
                          //Verificar nos espaços
                          return 'O nome do responsável é obrigatório';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      initialValue: _formData['endereco']?.toString(),
                      decoration: const InputDecoration(
                        labelText: 'Endereço',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      onSaved: (endereco) =>
                          _formData['endereco'] = endereco ?? '',
                      validator: (_endereco) {
                        final endereco = _endereco ?? '';
                        if (endereco.trim().isEmpty) {
                          //Verificar nos espaços
                          return 'O endereço é obrigatória';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: mediaQuery.size.height * .03),
                    TextFormField(
                      initialValue: _formData['contato']?.toString(),
                      decoration: const InputDecoration(
                        labelText: 'Celular',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      onSaved: (contate) =>
                          _formData['contato'] = contate ?? '',
                      validator: (_contato) {
                        final contato = _contato ?? '';
                        if (contato.trim().isEmpty) {
                          //Verificar nos espaços
                          return 'O contato é obrigatório';
                        }
                        return null;
                      },
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
                    SizedBox(height: mediaQuery.size.height * .02),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: mediaQuery.size.height * .04),
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
        ],
      ),
    );
  }
}
