import 'package:dra_nana/Models/vacunas.dart';

class Paciente {
  int _id;
  String _nombre;
  DateTime _fechaNacimiento;
  String _sexo;
  String _direccion;
  String _telefono;
  String _correo;
  int _idSeguroMedico;
  List<Vacunas> _vacunas;

  Paciente(
      this._id,
      this._nombre,
      this._fechaNacimiento,
      this._sexo,
      this._direccion,
      this._telefono,
      this._correo,
      this._idSeguroMedico,
      this._vacunas);

  Paciente.basico(this._id, this._nombre, this._fechaNacimiento, this._sexo,
      [this._direccion = "su casa",
      this._telefono = "0000",
      this._correo = "@example.com",
      this._idSeguroMedico = 0,
      this._vacunas = const []]) {
    _correo = "$_nombre@example.com";
  }

  //getter y setter necesarios por el encapsulamiento

  // getters
  int get id => _id;

  String getNombre() {
    return _nombre;
  }

  String getFechaNacimiento() {
    return _fechaNacimiento.day.toString() +
        _fechaNacimiento.month.toString() +
        _fechaNacimiento.year.toString();
  }

  String get sexo => _sexo;

  String get direccion => _direccion;

  String get telefono => _telefono;

  String get correo => _correo;

  int get seguroMedico => _idSeguroMedico;

  List<Vacunas> get vacunas => _vacunas;

  // setters
  set setNombre(String nombre) {
    _nombre = nombre;
  }

  set setFechaNacimiento(DateTime fNacimiento) {
    _fechaNacimiento = fNacimiento;
  }

  set setSexo(String s) {
    _sexo = s;
  }

  set setDireccion(String direccion) {
    _direccion = direccion;
  }

  set setTelefono(String telefono) {
    _telefono = telefono;
  }

  set setCorreo(String correo) {
    _correo = correo;
  }

  set setSeguroMedico(int seguroMedico) {
    _idSeguroMedico = seguroMedico;
  }

  set vacunas(List<Vacunas> value) => _vacunas = value;
}
