import 'package:dra_nana/Models/citasMedicas.dart';
import 'package:dra_nana/Models/historialMedico.dart';
import 'package:dra_nana/Models/historialVisitas.dart';
import 'package:dra_nana/Services/firestoreService.dart';
import 'package:dra_nana/utils/idGenerator.dart';

class MedicosServices {
  final Firestoreservice fireService;

  MedicosServices(this.fireService);

  Future<String> saveCitaMedica(Citasmedicas c) async {
    try {
      if (await _validarUsuario(c.pacienteId)) {
        var data = c.toFirestore();

        await fireService.getDb().collection("citasMedicas").add(data);

        return c.toString();
      } else {
        return "No se pudo guardar la cita medica por que el paciete no existe";
      }
    } catch (e) {
      return "error al gurdar la cita medica : $e";
    }
  }

  Future<String> createMedicalHistory(int id, Citasmedicas citamedica) async {
    if (await _validarUsuario(id)) {
      var value = await _ultimoId().then((value) => Idgenerator(value));

      int idvalue = await value.getLastId();

      var data = Historialmedico.basico(idvalue, id, [citamedica.id]).toMap();

      final docRef = fireService
          .getDb()
          .collection("HistorialMedico")
          .doc(idvalue.toString());

      await docRef.set(data);

      var response = await _createVisitHistory(idvalue, id, citamedica);

      return "el paciente fue guardado y $response";
    } else {
      return "El paciente no existe";
    }
  }

  Future<String> _createVisitHistory(
      int id, int pacienteId, Citasmedicas cita) async {
    try {
      var data =
          Historialvisitas(id, pacienteId, [cita], DateTime.now().toString())
              .toFirestore();

      final docRec =
          fireService.getDb().collection("historialVisitas").doc(id.toString());

      await docRec.set(data);

      return "historial de visitas actualizado";
    } catch (e) {
      return "no se pudo actualizar el historial de visitas : $e";
    }
  }

  Future<bool> _validarUsuario(int id) async {
    try {
      var paciente = await fireService
          .getDb()
          .collection("pacientes")
          .doc(id.toString())
          .get();

      return paciente.exists;
    } catch (e) {
      return false;
    }
  }

  Future<int> _ultimoId() async {
    var documents = await fireService.getDb().collection("pacientes").get();

    return documents.size;
  }
}
