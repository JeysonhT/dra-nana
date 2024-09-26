import 'package:dra_nana/Models/medicamentos.dart';

class Recetasmedicas {
  final int _id;
  int _pacienteId;
  int _medicoId;

  List<Medicamentos> medicamentos;

  DateTime _fecha;

  Recetasmedicas(this._id, this._pacienteId, this._medicoId, this.medicamentos,
      this._fecha);

  int get id => _id;

  get pacienteId => _pacienteId;

  set pacienteId(value) => _pacienteId = value;

  get medicoId => _medicoId;

  set medicoId(value) => _medicoId = value;

  get getMedicamentos => medicamentos;

  set setMedicamentos(medicamentos) => medicamentos = medicamentos;

  get getFecha => _fecha;

  set setFecha(fecha) => _fecha = fecha;
}
