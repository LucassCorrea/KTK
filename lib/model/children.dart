import 'package:flutter/material.dart';

class Children with ChangeNotifier {
  String _id;
  String _name;
  String _date;
  String _responsible;
  String _adress;
  String _contate;

  Children(
    this._id,
    this._name,
    this._date,
    this._responsible,
    this._adress,
    this._contate,
  );
  String get id {
    return _id;
  }

  String get name {
    return _name;
  }

  String get date {
    return _date;
  }

  String get responsible {
    return _responsible;
  }

  String get adress {
    return _adress;
  }

  String get contate {
    return _contate;
  }

  set id(String id) {
    _id = id;
  }

  set name(String name) {
    _name = name;
  }

  set date(String date) {
    _date = date;
  }

  set responsible(String responsible) {
    _responsible = responsible;
  }

  set adress(String adress) {
    _adress = adress;
  }

  set contate(String contate) {
    _contate = contate;
  }
}
