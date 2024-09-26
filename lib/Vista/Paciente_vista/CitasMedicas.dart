import 'package:flutter/material.dart';

void maid() => runApp(CitasMedicas());

class NuevaCita {
  var id;
  var pacienteid;
  var medicoid;
  var fecha;
  var hora;
  var motivo;
  var recetas;
  var examenes;
  var historial_visitasid;
  NuevaCita(
      {required this.id,
      required this.pacienteid,
      required this.medicoid,
      required this.fecha,
      required this.hora,
      required this.motivo,
      required this.recetas,
      required this.examenes,
      required this.historial_visitasid});
}

class CitasMedicas extends StatelessWidget {
  const CitasMedicas({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CitasMedicas",
      home: InicioCitasMedicas(),
    );
  }
}

class InicioCitasMedicas extends StatefulWidget {
  const InicioCitasMedicas({super.key});

  @override
  State<InicioCitasMedicas> createState() => _InicioCitasMedicasState();
}

class _InicioCitasMedicasState extends State<InicioCitasMedicas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Citas Medicas"),
        ),
        body: const Center(
            child: const Text("interfas de citas medicas en desarrollo")));
  }
}
class Citas{

}

Future<List<Citas>> historial() async{
  try {
    
  } catch (e) {
    
  }
}
class DatosCitas extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:  "Citas Medicas",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Citas Medicas"),
          backgroundColor: Colors.blue,
        ),
        body: FutureBuilder<List<Citas>>(
          future: historial(),
           builder: (context, snapshot){
            Text("en desarrollo");
           },
      )
    );
  }
}