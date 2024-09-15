class SeguroMedico {
  int _id;
  int _pacienteId;
  String _nombreSeguro;
  int _numeroPoliza;
  String _tipoSeguro;
  String _fechaVigente;

  SeguroMedico(this._id, this._pacienteId, this._nombreSeguro,
      this._numeroPoliza, this._tipoSeguro, this._fechaVigente);

  int get id => _id;

  get pacienteId => _pacienteId;

  set pacienteId(value) => _pacienteId = value;

  get nombreSeguro => _nombreSeguro;

  set nombreSeguro(value) => _nombreSeguro = value;

  get numeroPoliza => _numeroPoliza;

  set numeroPoliza(value) => _numeroPoliza = value;

  get tipoSeguro => _tipoSeguro;

  set tipoSeguro(value) => _tipoSeguro = value;

  get fechaVigente => _fechaVigente;

  set fechaVigente(value) => _fechaVigente = value;
}
