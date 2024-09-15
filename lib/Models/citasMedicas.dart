class Citasmedicas {
  int _id;
  int _pacienteId;
  int _medicoId;
  DateTime _fecha;
  String _motivo;
  List<String> _recetas;
  List<String> _examenes;

  Citasmedicas(this._id, this._pacienteId, this._medicoId, this._fecha,
      this._motivo, this._recetas, this._examenes);

  // getters & setters
  int get id => _id;

  get pacienteId => _pacienteId;

  set pacienteId(value) => _pacienteId = value;

  get medicoId => _medicoId;

  set medicoId(value) => _medicoId = value;

  get fecha => _fecha;

  set fecha(value) => _fecha = value;

  get motivo => _motivo;

  set motivo(value) => _motivo = value;

  get recetas => _recetas;

  set recetas(value) => _recetas = value;

  get examenes => _examenes;

  set examenes(value) => _examenes = value;
}
