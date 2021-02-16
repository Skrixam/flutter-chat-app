import 'package:chat_app/widgets/boton_azul.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/labels.dart';
import 'package:chat_app/widgets/logo.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {

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
             child: SingleChildScrollView(
               physics: BouncingScrollPhysics(),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

                Logo(titulo: 'Registro',),

                _Form(),

                Labels(
                subtitulo: '¿Ya tienes una?',
                titulo: 'Ingresa ahora',
                ruta: 'login',),

          ],
        ),
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

final nameCtrl = TextEditingController();
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
           icon: Icons.perm_identity,
           placeholder: 'Nombre',
           keyboardtype: TextInputType.emailAddress,
           textcontroller: nameCtrl,
           ),

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
            text: 'Crear cuenta',
            onpressed: (){
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}



