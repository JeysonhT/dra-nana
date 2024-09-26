import 'package:flutter/material.dart';
import 'package:dra_nana/Services/medicos/medicos_services.dart';

void main() => runApp(const MyApp());

class Datosdeconsulta {
  var fecah;
  var hora;
  var motivo_consulta;
  var diagnostico;
  var tratamiento;
  var notadelmedico;
  Datosdeconsulta(
      {required this.fecah,
      required this.hora,
      required this.motivo_consulta,
      required this.diagnostico,
      required this.tratamiento,
      required this.notadelmedico});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Datos de la consulta',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Datos de la consulta'),
          ),
          body: formulariodatosconsulta()),
    );
  }
}

class formulariodatosconsulta extends StatefulWidget {
  const formulariodatosconsulta({super.key});

  @override
  State<formulariodatosconsulta> createState() =>
      _formulariodatosconsultaState();
}

class _formulariodatosconsultaState extends State<formulariodatosconsulta> {
  final _formkey = GlobalKey<FormState>();
//controles de variables
  final TextEditingController _fechacontroller = TextEditingController();
  final TextEditingController _horacontroller = TextEditingController();
  final TextEditingController _motivo_consultacontroller =
      TextEditingController();
  final TextEditingController _diagnosticocontroller = TextEditingController();
  final TextEditingController _tratamientocontroller = TextEditingController();
  final TextEditingController _notadelmedicocontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _fechacontroller,
              decoration: InputDecoration(labelText: 'Fecha'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, verifique la fecha';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _horacontroller,
              decoration: InputDecoration(labelText: 'Hota'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, verifique la hora';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _motivo_consultacontroller,
              decoration: InputDecoration(labelText: 'Motivo de la consulta'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, ingrese el motivo de la consulta del paciente';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _diagnosticocontroller,
              decoration: InputDecoration(labelText: 'Diagnostico'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, Ingrese el diagnostico encontrado para el paciente';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _tratamientocontroller,
              decoration: InputDecoration(labelText: 'Tratamiento'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, Ingrese el tratamiento a seguir del paciente';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _notadelmedicocontroller,
              decoration: InputDecoration(labelText: 'Nota del Medico'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  // Envía los datos al servidor para registrar el gasto
                  //DatosCitaMedica;
                }
              },
              child: Text('Agregar Consulta'),
            ),
          ],
        ));
  }
}
