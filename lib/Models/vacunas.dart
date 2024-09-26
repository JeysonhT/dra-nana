import 'package:cloud_firestore/cloud_firestore.dart';

class Vacunas {
  int _id;
  String _nombre;
  String _fechaAplicacion;
  int _dosis;
  String _proximaAplicacion;

  Vacunas(this._id, this._nombre, this._fechaAplicacion, this._dosis,
      this._proximaAplicacion);

  Vacunas.create(
      this._nombre, this._fechaAplicacion, this._dosis, this._proximaAplicacion,
      [this._id = 0]);

  //getter & setters

  int get id => _id;

  set id(value) => _id;

  get nombre => _nombre;

  set nombre(value) => _nombre = value;

  get fechaAplicacion => _fechaAplicacion;

  set fechaAplicacion(value) => _fechaAplicacion = value;

  get dodis => _dosis;

  get proximaAplicacion => _proximaAplicacion;

  set proximaAplicacion(value) => _proximaAplicacion = value;

  factory Vacunas.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();

    return Vacunas(data?["id"], data?["nombre"], data?["fechaAplicacion"],
        data?["dosis"], data?["proximaAplicacion"]);
  }

  factory Vacunas.fromMap(Map<String, dynamic> data) {
    return Vacunas(data["id"], data["nombre"], data["fechaAplicacion"],
        data["dosis"], data["proximaAplicacion"]);
  }

  factory Vacunas.empty() {
    return Vacunas(0, "", "", 0, "");
  }
}
