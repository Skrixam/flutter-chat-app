 import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  final IconData icon;
  final String placeholder;
  final TextEditingController textcontroller;
  final TextInputType keyboardtype;
  final bool ispassword;

  const CustomInput({
    Key key, 
   @required this.icon,
   @required this.placeholder,
   @required this.textcontroller,
   this.keyboardtype = TextInputType.text,
   this.ispassword = false}) 
   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: EdgeInsets.only(bottom:20),
            padding: EdgeInsets.only(top:5,left:5,bottom:5,right:20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.black.withOpacity(0.05),
                offset: Offset(0,5),
                blurRadius: 5
                )
              ]
            ),
            child: TextField(
              controller: this.textcontroller,
              autocorrect: false,
              keyboardType: this.keyboardtype,
              obscureText: this.ispassword,
              decoration: InputDecoration(
                prefixIcon: Icon(this.icon),
                focusedBorder: InputBorder.none,//Para quitar el borde de abajo
                border: InputBorder.none, //Para quitar el borde cuando no esta seleccionado
              hintText: this.placeholder
              ),
            ),
          );
  }
}