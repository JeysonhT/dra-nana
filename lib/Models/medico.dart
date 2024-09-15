class Medico {
  int _id;
  String _nombre;
  int _especialidadId;
  String _telefono;
  String _correo;
  String _horario;

  Medico(this._id, this._nombre, this._especialidadId, this._telefono,
      this._correo, this._horario);

  // getters
  int get id => _id;

  String get nombre => _nombre;

  int get especialidadId => _especialidadId;

  String get telefono => _telefono;

  String get correo => _correo;

  String get horario => _horario;

  // setters

  set setNombre(String nombre) {
    _nombre = nombre;
  }

  set setTelefono(String telefono) {
    _telefono = telefono;
  }

  set setCorreo(String correo) {
    _correo = correo;
  }

  set setHorario(String horario) {
    _horario = horario;
  }
}
