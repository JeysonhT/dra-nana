class ExamenesMedicos {
  final int _id;
  int _pacienteId;
  String _tipo;
  String _resultados;
  DateTime _fecha;
  int _citaMedicaId;

  ExamenesMedicos(this._id, this._pacienteId, this._tipo, this._resultados,
      this._fecha, this._citaMedicaId);

  int get id => _id;

  get pacienteId => _pacienteId;

  set pacienteId(value) => _pacienteId = value;

  get tipo => _tipo;

  set tipo(value) => _tipo = value;

  get resultados => _resultados;

  set resultados(value) => _resultados = value;

  get fecha => _fecha;

  set fecha(value) => _fecha = value;

  get citaMedicaId => _citaMedicaId;

  set citaMedicaId(value) => _citaMedicaId = value;
}
