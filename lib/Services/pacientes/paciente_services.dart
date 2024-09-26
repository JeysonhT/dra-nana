import 'package:dra_nana/Models/paciente.dart';
import 'package:dra_nana/Services/firestoreService.dart';

class PacienteServices {
  final db = Firestoreservice().getDb();

  PacienteServices();

  Future<Paciente?> getPacienteByid(int id) async {
    var documentSnapshot =
        await db.collection("pacientes").doc(id.toString()).get();
    if (!documentSnapshot.exists) return null;
    try {
      return Paciente.fromFirestore(documentSnapshot);
    } catch (e) {
      return Paciente.empty();
    }
  }
}
