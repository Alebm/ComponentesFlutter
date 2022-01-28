// ignore_for_file: avoid_print

import 'package:componentesflutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//* key sirve para mantener la referencia

    final myFormKey = GlobalKey<FormState>();

//!cereamos la forma de obtejer los valores del form mediante un mapa
    final Map<String, String> formValues = {
      'Nombre': 'Alejandro',
      'Apellido': 'Bedoya',
      'email': 'Bedoya@gmail.com',
      'password': '123456',
      'role': 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        // un widget debe contener todo el formulario
        child: Form(
          key: myFormKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            //* Form sabe que hay inputsfield
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  formProperty: 'Nombre',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  formProperty: 'Apellido',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Correo del usuario',
                  labelText: 'Correo',
                  keyboardtipe: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                CustomInputField(
                  hintText: 'Contraseña del usuario',
                  labelText: 'Contraseña',
                  keyboardtipe: TextInputType.emailAddress,
                  obscuretext: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),
                //* con <Sting> damos explicistamente el tipo de dato
                DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'SuperUser',
                        child: Text('Super User'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Jr.Developer',
                        child: Text('Jr.Developer'),
                      ),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    }),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //*para desactivar el teclado luego de tocar el botton
                    //FocusScope.of(context).requestFocus(FocusNode());
                    //* esto me sirve para validar estados de cada input, es el metodo para tomar los datos de los input
                    if (!myFormKey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }
                    print(formValues);
                  },
                  child: const Text('Guardar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
