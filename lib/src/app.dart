import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  String nombre = '';
  String? email;
  // String? password;

  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 70.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // const CircleAvatar(
              //   radius: 100.0,
              //   backgroundColor: Color.fromARGB(255, 0, 0, 0),
              // ),
              Text(
                'Login Flutter',
                style: TextStyle(fontFamily: 'cursive', fontSize: 50.0),
              ),
              Text(
                'Luis Requejo',
                style: TextStyle(fontSize: 20.0),
              ),
              // SizedBox(
              //   width: 160.0,
              //   height: 115.0,
              //   child: Divider(color: Colors.blueGrey[600]),
              // ),
              Divider(
                height: 30.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: 'Username',
                    labelText: 'User Name',
                    suffixIcon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal())),
                controller: username,
                onSubmitted: (String valor) {
                  setState(() {
                    nombre = valor;
                  });
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0))),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0))),
                onSubmitted: (valor) {
                  email = valor;
                  print('El email es $email');
                },
              ),
              Divider(
                height: 15.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Ingresar");
                  },
                  child: Text("Ingresar"))
            ],
          )
        ],
      ),
    );
  }

  double get newMethod => 20.0;
}
