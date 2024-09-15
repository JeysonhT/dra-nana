class Vacunas {
  int _id;
  String _nombre;
  String _fechaAplicacion;
  final int _dosis;
  String _proximaAplicacion;

  Vacunas(this._id, this._nombre, this._fechaAplicacion, this._dosis,
      this._proximaAplicacion);

  Vacunas.create(
      this._nombre, this._fechaAplicacion, this._dosis, this._proximaAplicacion,
      [this._id = 0]);

  //getter & setters

  int get id => _id;

  get nombre => _nombre;

  set nombre(value) => _nombre = value;

  get fechaAplicacion => _fechaAplicacion;

  set fechaAplicacion(value) => _fechaAplicacion = value;

  get dodis => _dosis;

  get proximaAplicacion => _proximaAplicacion;

  set proximaAplicacion(value) => _proximaAplicacion = value;
}
