import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/logo.png'), // Agrega tu imagen en la carpeta assets
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Correo'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica de inicio de sesión aquí
                },
                child: Text('Login'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navegar a la página de registro (signup)
                    },
                    child: Text('Signup'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navegar a la página de recuperación de contraseña (forgot password)
                    },
                    child: Text('Forgot User'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
