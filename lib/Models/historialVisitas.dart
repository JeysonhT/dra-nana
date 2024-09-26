import 'package:dra_nana/Models/citasMedicas.dart';

class Historialvisitas {
  final int _id;
  int _pacienteId;
  List<Citasmedicas> _citasMedicas;
  String _ultimaVisita;

  Historialvisitas(
      this._id, this._pacienteId, this._citasMedicas, this._ultimaVisita);

  int get id => _id;

  get pacienteId => _pacienteId;

  set pacienteId(value) => _pacienteId = value;

  get getCitasMedicas => _citasMedicas;

  set setCitasMedicas(citasMedicas) => _citasMedicas = citasMedicas;

  get getUltimaVisita => _ultimaVisita;

  set setUltimaVisita(ultimaVisita) => _ultimaVisita = ultimaVisita;

  Map<String, dynamic> toFirestore() {
    return {
      "id": _id,
      "pacienteId": _pacienteId,
      "citasMedicas": _citasMedicas,
      "ultimaVisita": _ultimaVisita
    };
  }
}
