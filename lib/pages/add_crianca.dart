import 'package:app_gdppi/components/background.dart';
import 'package:app_gdppi/components/buttom_back.dart';
import 'package:app_gdppi/components/title.dart';
import 'package:flutter/material.dart';
import 'package:../app_gdppi/utils/routes.dart';
import 'package:app_gdppi/controller/controlers.dart';
import 'package:provider/provider.dart';

class AddCrianca extends StatefulWidget {
  const AddCrianca({Key? key}) : super(key: key);

  @override
  _AddCriancaState createState() => _AddCriancaState();
}

class _AddCriancaState extends State<AddCrianca> {
  final _formKey = GlobalKey<FormState>(); //Chave Global do formulário
  final _formData = Map<String, Object>(); //Armazena os valores dos formulários
  bool _carregando = false;
  Future<void> _submitForm() async {
    //Função de submeter o formulário
    final isValid =
        _formKey.currentState?.validate() ?? false; //Validação do formulário

    if (!isValid) {
      //Caso seja não valido
      return;
    }
    _formKey.currentState?.save(); //Chama cada componente onsaved
    setState(() {
      _carregando = true;
    });

    try {
      //Se salvar corretamente ele vai para o registro concluido
      await Provider.of<Controlers>(context, listen: false)
          .saveChildren(_formData);
      Navigator.of(context).pushNamed(Routes.REGISTRO_CONCLUIDO);
    } catch (error) {
      await showDialog<void>(
          context: context,
          builder: (ctx) => AlertDialog(
                title: Text("Ocorreu um erro!"),
                content: Text("Ocorreu um erro ao tentar salvar a criança!"),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("Ok"))
                ],
              ));
    } finally {
      setState(() => _carregando = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return _carregando
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Background(
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
                          key: _formKey,
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
                                onSaved: (name) =>
                                    _formData['name'] = name ?? '',
                                validator: (_name) {
                                  final name = _name ?? '';
                                  if (name.trim().isEmpty) {
                                    //Verificar nos espaços
                                    return 'O nome é obrigatório';
                                  }
                                  return null;
                                },
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
                                onSaved: (responsavel) =>
                                    _formData['responsavel'] =
                                        responsavel ?? '',
                                validator: (_responsavel) {
                                  final responsavel = _responsavel ?? '';
                                  if (responsavel.trim().isEmpty) {
                                    //Verificar nos espaços
                                    return 'O nome do responsável é obrigatório';
                                  }
                                  return null;
                                },
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
                              SizedBox(height: mediaQuery.size.height * .02),
                              SizedBox(
                                width: mediaQuery.size.width * .4,
                                height: mediaQuery.size.height * .08,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _submitForm();
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
                                      vertical: 8,
                                    ),
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
