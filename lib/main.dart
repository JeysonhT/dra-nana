import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'Models/paciente.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Paciente paciente = Paciente.basico(1, "juan", DateTime.now(), "M");
    String nombre = paciente.getNombre();
    var fecha = paciente.getFechaNacimiento();
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Text('Hello $nombre felicidades por nacer el $fecha'),
        ),
      ),
    );
  }
}
