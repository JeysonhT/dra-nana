class Especialidad {
  int _id;
  String _area;

  Especialidad(this._id, this._area);

  //getters & setters

  int get getId => _id;

  String get getArea => _area;

  set setArea(String area) {
    _area = area;
  }
}
