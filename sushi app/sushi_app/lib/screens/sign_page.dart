import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sushi_app/screens/intro_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  String email = "", password = "", error = "";
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Iniciar sesión",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          Offstage(
            offstage: error == '',
            child: const Text("error",
                style: TextStyle(color: Colors.red, fontSize: 16)),
          ),
          formulario()
        ],
      ),
    );
  }

  Widget formulario() {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            buildEmail(),
            const SizedBox(height: 25),
            buildPassword(),
            const SizedBox(height: 25),
            buttonLogin()
          ],
        ));
  }

  Widget buildEmail() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
          labelText: "Correo",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.black))),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return "Este campo es obligatorio";
        }
        return null;
      },
      onSaved: (String? value) {
        password = value!;
      },
    );
  }

  Widget buildPassword() {
    return TextFormField(
      controller: _passwordController,
      decoration: InputDecoration(
          labelText: "Contraseña",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.black))),
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return "Este campo es obligatorio";
        }
        return null;
      },
      onSaved: (String? value) {
        password = value!;
      },
    );
  }

  Widget buttonLogin() {
    return FractionallySizedBox(
      widthFactor: .6,
      child: ElevatedButton(
          onPressed: () async {
            UserCredential? credential =
                await Login(_emailController.text, _passwordController.text);

            final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

            if (firebaseAuth.currentUser != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const IntroPage()),
                  (Route<dynamic> route) => false);
            }
          },
          child: const Text("Login")),
    );
  }

  Future<UserCredential?> Login(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // usuario no encontrado
        setState(() {
          error = "usuario no encontrado";
        });
      }
      if (e.code == 'wrong-password') {
        // contraseña incorrecta
        setState(() {
          error = "contraseña incorrecta";
        });
      }
    }
  }
}
