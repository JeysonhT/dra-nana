import 'package:flutter/material.dart';

void main() => runApp(const historialMedico());

class historialMedico extends StatelessWidget {
  const historialMedico({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Historialmedico',
      home: InicioHistorialMedico(),
    );
  }
}

class InicioHistorialMedico extends StatefulWidget {
  const InicioHistorialMedico({super.key});

  @override
  State<InicioHistorialMedico> createState() => _InicioHistorialMedicoState();
}

class _InicioHistorialMedicoState extends State<InicioHistorialMedico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historial Medico"),
      ),
      body: const Center(
        child: Text("por terminar"),
      ),
    );
  }
}
