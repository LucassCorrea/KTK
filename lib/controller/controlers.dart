import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:app_gdppi/model/children_data.dart';
import 'package:app_gdppi/model/children.dart';

class Controlers with ChangeNotifier {
  List<Children> _items = dataChildren;

  //Pegando valores a partir dos formulários
  List<Children> get items => [..._items];
  void saveChildren(Map<String, Object> _formData) {
    bool hasId = _formData['id'] != null; //Se tem Id
    final children = Children(
      hasId ? _formData['id'] as String : Random().nextDouble().toString(),
      _formData['name'].toString(),
      _formData['nascimento'].toString(),
      _formData['responsavel'].toString(),
      _formData['endereco'].toString(),
      _formData['contato'].toString(),
    );
    if (hasId) {
      //Se tiver id ele faz o update, se não ele adiciona
      updateChildren(children);
    } else {
      addChildren(children);
    }
  }

  void addChildren(Children children) {
    http
        .post(
      Uri.parse('https://gdppiktk-default-rtdb.firebaseio.com/criancas.json'),
      body: jsonEncode(
        //Covertendo para json
        {
          "name": children.name,
          "data_de_nascimento": children.date,
          "responsavel": children.responsible,
          "endereco": children.adress,
          "contatos": children.contate,
        },
      ),
    )
        .then((response) {
      final id =
          jsonDecode(response.body)['name']; //Pegando o id a partir do firebase
      //Só adiciona quando tiver o retorno do firebase

      _items.add(Children(children.id, children.name, children.date,
          children.responsible, children.adress, children.contate));
      notifyListeners();
    });
  }

  void updateChildren(Children children) {
    int index = _items.indexWhere((p) => p.id == children.id);
    if (index >= 0) {
      _items[index] = children;
      notifyListeners();
    }
  }
}
