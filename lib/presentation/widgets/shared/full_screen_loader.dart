import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});


  Stream<String> getLoadingMessages(){
  final messages = <String>[
    'Cargando peliculas',
    'Comprando palomitas',
    'Cargando populares',
    'Llamando a mi novia',
    'Ya mero....',
    'Ya esta tomando mucho tiempo :(',
  ];

    return Stream.periodic(Duration(milliseconds: 1200),(computationCount) {
      return messages[computationCount];
    },).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Espere porfvor'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 2,),
          SizedBox(height: 2,),
          StreamBuilder(stream: getLoadingMessages(), builder: (context, snapshot) {
            if(!snapshot.hasData) return Text('Cargando .....');
            return Text(snapshot.data!);

          },)
        ],
      ),
    );
  }
}