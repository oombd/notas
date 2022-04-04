import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _notaTitleController = TextEditingController();
  TextEditingController _notaController = TextEditingController();

  _exibirTelaCadastro() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextField(
                  controller: _notaTitleController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Título"
                  ),
                ),
                TextField(
                  controller: _notaController,
                  autofocus: true,
                  decoration: const InputDecoration(
                      hintText: "Nota"
                  ),
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar")
              ),
              TextButton(
                  onPressed: () {

                    Navigator.pop(context);
                  },
                  child: const Text("Salvar")
              ),
            ],
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("NOTAS"),
        backgroundColor: Colors.black,
      ),
      body: Container(

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: (){
          _exibirTelaCadastro();
        },
      ),
    );
  }
}
