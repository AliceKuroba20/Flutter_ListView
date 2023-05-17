import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var vengadores=["Capitan america", "Iron man", "Hulk", "Thor", "Blackwidow"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        //Obteniendo el tamaño de la lista
      itemCount: vengadores.length,  
      //Condstructor
      itemBuilder: (context, index) => ListTile(
        //Asignando nombre
      title: Text(vengadores[index]),
      //Aignando los iconos de cada ListTitle
      trailing: Icon(Icons.chevron_right, color:  Colors.pink),
      onTap: (){
        //Variable que optiene opcion selecionada
      var opc=vengadores[index];
      //Mostramos variable en consola
      print(opc);
      },
      ),
      //Creamo separadores de ListTitle
     separatorBuilder:(_,__) => Divider(),


     )
    );
  }
}
