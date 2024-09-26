import 'package:dra_nana/Models/vacunas.dart';

class Historialmedico {
  final int _id;
  int _pacienteId;
  List<String> _condicionesMedicas;
  List<String> _alergias;
  List<String> _tratamientos;
  List<Vacunas> _vacunas;
  final List<int> _citasMedicas;

  Historialmedico(this._id, this._pacienteId, this._condicionesMedicas,
      this._alergias, this._tratamientos, this._vacunas, this._citasMedicas);

  Historialmedico.basico(this._id, this._pacienteId, this._citasMedicas,
      [this._alergias = const [],
      this._condicionesMedicas = const [],
      this._tratamientos = const [],
      this._vacunas = const []]);

  //getters & setters

  int get id => _id;

  get pacienteId => _pacienteId;

  set pacienteId(value) => _pacienteId = value;

  get condicionesMedicas => _condicionesMedicas;

  set condicionesMedicas(value) => _condicionesMedicas = value;

  get alergias => _alergias;

  set alergias(value) => _alergias = value;

  get tratamientos => _tratamientos;

  set tratamientos(value) => _tratamientos = value;

  get vacunas => _vacunas;

  set vacunas(value) => _vacunas = value;

  Map<String, dynamic> toMap() {
    return {
      "id": _id,
      "pacienteId": _pacienteId,
      "condicionesMedicas": _condicionesMedicas,
      "alergias": alergias,
      "tratamientos": _tratamientos,
      "vacunas": _vacunas,
      "citasMedicas": _citasMedicas
    };
  }
}
