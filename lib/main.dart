import 'package:flutter/material.dart';


void main() => runApp(MyApp()); // llama al primer widget que se ejecutará

/*
void main() {
    runApp(MyApp);
}*/

String _sino =
    "Si"; // podemos meter la instruccion en la clase y la función también

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // es el estilo de la app
      title: "Alert Dialog", // nombre de la app
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // estructura básica de una app
        // estructura de una app movil
        appBar: AppBar(
          title: Text("AlertDialog"),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  _mostrarDialogo2(context);
                },
                child: Text("Alert")),
            SizedBox(height: 40),
            Text(_sino)
          ],
        )));
  }

// Función para mostrar el diálogo
  Future<void> _mostrarDialogo2(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Título del Diálogo'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Este es un ejemplo de contenido de diálogo.'),
                Text('Puedes agregar más widgets según tus necesidades.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el diálogo
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                // Lógica para manejar el caso "si no"
                // Puedes agregar aquí las acciones que desees realizar
                setState(() {
                  _sino = "Si";
                });

                Navigator.of(context).pop(); // Cerrar el diálogo
              },
              child: Text('Si'),
            ),
            TextButton(
              onPressed: () {
                // Lógica para manejar el caso "si no"
                // Puedes agregar aquí las acciones que desees realizar
                setState(() {
                  _sino = "No";
                });
                Navigator.of(context).pop(); // Cerrar el diálogo
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }
}

// Función para mostrar el diálogo
Future<void> _mostrarDialogo(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Título del Diálogo'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Este es un ejemplo de contenido de diálogo.'),
              Text('Puedes agregar más widgets según tus necesidades.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Cerrar el diálogo
            },
            child: Text('Cerrar'),
          ),
        ],
      );
    },
  );
}
