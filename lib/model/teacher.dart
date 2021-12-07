import 'package:intl/intl.dart';

class Teacher {
  String _id;
  String _name;
  String _date;
  String _email;
  String _password;
  String _institution;

  Teacher(this._id, this._name, this._date, this._email, this._password,
      this._institution);

  String get id {
    return _id;
  }

  String get name {
    return _name;
  }

  String get date {
    return _date;
  }

  String get email {
    return _email;
  }

  String get password {
    return _password;
  }

  String get institution {
    return _institution;
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

  set email(String email) {
    _email = email;
  }

  set password(String password) {
    _password = password;
  }

  set institution(String institution) {
    _institution = institution;
  }
}
