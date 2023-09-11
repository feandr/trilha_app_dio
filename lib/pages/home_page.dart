import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilha_app/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var quantidadesDeCliques = 0;
  var numeroGerado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Meu App"),
          //titleTextStyle: GoogleFonts.pacifico(),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.blueAccent,
                child: const Text("Ações do Usuario",
                  //style: GoogleFonts.acme(fontSize: 20)
                ),
              ),
              Container(
                color: Colors.green,
                child: Text("Foi clicado $quantidadesDeCliques vezes",
                  //style: GoogleFonts.acme(fontSize: 20)
                ),
              ),
              Container(
                color: Colors.orange,
                child: Text("Numero aleatorio é: $numeroGerado",
                  //style: GoogleFonts.acme(fontSize: 20)
                ),
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(color: Colors.red, child: Text("Dez", style: GoogleFonts.pacifico(),)),
                Expanded(child: Container(color: Colors.blue, child:Text("Vinte", style: GoogleFonts.pacifico(),))),
                Container(color: Colors.green, child:Text("Trinta", style: GoogleFonts.pacifico(),)),
                Container(color: Colors.yellow, child:Text("Quarenta", style: GoogleFonts.pacifico(),)),
                Container(color: Colors.purple, child:Text("Cinquenta", style: GoogleFonts.pacifico(),)),
              ],
             ) 
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              quantidadesDeCliques = quantidadesDeCliques + 1;
              numeroGerado = GeradorNumeroAleatorio.gerarNumeroAleatorio(1000);
            });
          },
          child: const Icon(Icons.add_box),
        ));
  }
}
