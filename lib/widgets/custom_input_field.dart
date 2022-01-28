// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardtipe;
  final bool obscuretext;

  //*creamos varibles para tomar los datos de los inputs
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.keyboardtipe,
    this.obscuretext = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      keyboardType: keyboardtipe,
      obscureText: obscuretext,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'campor requerido';
        return value.length < 3 ? 'minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
