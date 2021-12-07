class Children {
  String _id;
  String _name;
  String _date;
  String _responsible;
  String _contate;

  Children(
    this._id,
    this._name,
    this._date,
    this._responsible,
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

  set contate(String contate) {
    _contate = contate;
  }
}
