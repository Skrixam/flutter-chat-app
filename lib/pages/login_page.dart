import 'package:chat_app/widgets/boton_azul.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2f2f2),
      body: SafeArea(
        //envolveremos el colum en un singlechildscrollview
        //para que no nos arrojen problemas de overflowed 
        //o por el espacio
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
          //encerramos el column en un container
           child: Container(
             height: MediaQuery.of(context).size.height * 0.9,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

              Logo(titulo: 'Messenger',),

              _Form(),

              Labels(
              subtitulo: '¿No tienes cuenta?',
              titulo: 'Crear cuenta',
              ruta: 'register',),

              Text('Terminos y condiciones de uso',style: TextStyle(fontWeight: FontWeight.w200),)

          ],
        ),
           ),
              ),
      )
   );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

final emailCtrl = TextEditingController();
final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[

         CustomInput(
           icon: Icons.mail_outline,
           placeholder: 'Correo',
           keyboardtype: TextInputType.emailAddress,
           textcontroller: emailCtrl,
           ),

         CustomInput(
           icon: Icons.lock_outline,
           placeholder: 'Contraseña',
           ispassword: true,
           textcontroller: passCtrl,
           ),

          BotonAzul(
            text: 'Ingrese',
            onpressed: (){
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          ),

        ],
      ),
    );
  }
}



