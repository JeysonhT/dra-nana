import 'package:flutter/material.dart';
import 'package:dra_nana/Services/firestoreService.dart';

void main() => runApp(const MyApp());

var PacienteId;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Historial del paciente',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Historial del paciente'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

Future<List<Map<String, dynamic>>> getHistorialpaciente(int patientId) async {
  final Firestoreservice fireService;
  try {
    // Referencia a la colección de 'HistorialMedico' en Firestore
    final CollectionReference historyRef =
        fireService.getDb().collection("HistorialMedico");

    // Consulta para obtener todos los documentos que coincidan con el ID del paciente
    QuerySnapshot querySnapshot =
        await historyRef.where('patientId', isEqualTo: patientId).get();

    // Lista para almacenar los historiales médicos
    List<Map<String, dynamic>> medicalHistory = [];

    // Iterar sobre los documentos de la consulta y agregarlos a la lista
    for (var doc in querySnapshot.docs) {
      medicalHistory.add(doc.data() as Map<String, dynamic>);
    }

    // Retornar la lista de historiales médicos
    return medicalHistory;
  } catch (e) {
    print("Error al obtener el historial médico: $e");
    return [];
  }
}

class datoshistorialpaciente {}

class HistorialMedicodelPaciente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Historial del paciente",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Historial del paciente"),
              backgroundColor: Colors.blue,
            ),
            body: FutureBuilder<List<Map<String, dynamic>>>(
              future: getHistorialpaciente(PacienteId),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData && snapshot.data != null) {
                  final userData = snapshot.data!;
                  return _buildUserProfile(userData);
                } else {
                  return Center(
                      child:
                          Text('No se encontraron datos para este usuario.'));
                }
              },
            )));
  }
}
