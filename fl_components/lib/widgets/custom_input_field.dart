import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.icon,
      this.suffixIcon,
      this.keyboardType,
      //Si no lo envia va ser false
      this.obscureText = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      //initialValue: '',
      //Para poder hacer que despues de dar espacio el siguiente caracter sea mayuscula
      textCapitalization: TextCapitalization.words,
      //Para cambiar el teclado segun campo que necesite
      keyboardType: keyboardType,
      //Para ocultar el texo, util para el capo de contraseñas
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value
      //print(value);
      ,
      validator: (value) {
        if (value == null) return 'Este campo es necesario';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      //ctivar validación sin estar en un form
      autovalidateMode: AutovalidateMode.onUserInteraction,
      //Formato para los inputs
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
