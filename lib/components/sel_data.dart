import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelecionarData extends StatelessWidget {
  final DateTime? selectedDate;
  final Function(DateTime)? onDateChanged;

  const SelecionarData({Key? key, this.selectedDate, this.onDateChanged})
      : super(key: key);

  _showDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      //O then é uma outra função chamada para verificar a data
      if (pickedDate == null) {
        return;
      }

      onDateChanged!(pickedDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () => _showDatePicker(context),
          child: const Text(
            'Selecionar data',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
        Text(
          selectedDate == null
              ? 'Nenhuma data selecionada'
              : 'Data Selecionada: ${DateFormat('d/M/y').format(selectedDate!)}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
