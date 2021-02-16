import 'package:flutter/material.dart';

class Labels extends StatelessWidget {

  final String ruta;
  final String subtitulo;
  final String titulo;

  const Labels({
    Key key, 
    @required this.ruta,
    @required this.subtitulo,
    @required this.titulo,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(this.subtitulo,style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w300)),
          SizedBox(height: 10),
          //Es para ponerle cualquier accion a lo que envuelvo
          GestureDetector( 
            child: Text(this.titulo,style: TextStyle(color: Colors.blue[600],fontSize: 18,fontWeight: FontWeight.bold)),
            onTap: (){
      //Aqui nos iremos a la pagina de registro
      Navigator.pushReplacementNamed(context, this.ruta);

              //Para ver que sirve el tap
              // print('tap');
            },
            ),
        ],
      ),
    );
  }
}