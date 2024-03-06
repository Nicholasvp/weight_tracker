import 'package:flutter/material.dart';

class ModalClear extends StatelessWidget {
  const ModalClear({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: Column(
        children: [
          const Text('Você tem certeza que quer limpar os resultados?',
              style: TextStyle(fontSize: 22), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          const Text('Todos os dados serão apagados'),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Navigator.pop(context, true),
            child: const Text(
              'Limpar resultados',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancelar',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
