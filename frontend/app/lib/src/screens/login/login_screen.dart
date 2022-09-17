import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
              child: Center(
                  child: Text(
            "UaiList",
            style: TextStyle(color: Color(0xff0eb400), fontSize: 50),
          ))),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                side: BorderSide(color: Colors.black.withOpacity(0.1))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        label: Text("Email"),
                        fillColor: Color(0xfff5f5f5),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: const Text("Senha"),
                      fillColor: Color(0xfff5f5f5),
                      filled: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      suffixIcon: GestureDetector(
                        child: Icon(_showPassword == false
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ),
                    obscureText: _showPassword == false ? true : false,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () => {},
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Color(0xff0eb400))),
                  child: const Text("Entrar"),
                ),
              )),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Já possui uma conta?"),
              TextButton(onPressed: () => {}, child: const Text("Entre"))
            ],
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
