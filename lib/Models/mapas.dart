class Mapas {
  int _id;
  String _nombre;
  String _direccion;
  Map<String, String> _coordenadas;

  Mapas(this._id, this._nombre, this._direccion, this._coordenadas);

  int get id => _id;

  set id(int value) => _id = value;

  get nombre => _nombre;

  set nombre(value) => _nombre = value;

  get direccion => _direccion;

  set direccion(value) => _direccion = value;

  get coordenadas => _coordenadas;

  set coordenadas(value) => _coordenadas = value;
}
