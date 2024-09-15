class Medicamentos {
  int _id;
  String _nombre;
  int _dosis;
  String _frecuencia;
  String _duracion;

  Medicamentos(
      this._id, this._nombre, this._dosis, this._frecuencia, this._duracion);

  int get id => _id;

  set id(int value) => _id = value;

  get nombre => _nombre;

  set nombre(value) => _nombre = value;

  get dosis => _dosis;

  set dosis(value) => _dosis = value;

  get frecuencia => _frecuencia;

  set frecuencia(value) => _frecuencia = value;

  get duracion => _duracion;

  set duracion(value) => _duracion = value;
}
