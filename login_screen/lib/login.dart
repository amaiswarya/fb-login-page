import 'package:flutter/material.dart';

import 'login_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      const SizedBox(
        height: 80,
      ),
      Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          alignment: Alignment.topCenter,
          child: const Text(
            "facebook",
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue,
              fontWeight: FontWeight.w800,
            ),
          )),
      const SizedBox(
        height: 20,
      ),
      Container(
          padding: const EdgeInsets.all(10),
          child: (TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Name Here',
              hintText: 'Enter Name Here',
            ),
            autofocus: false,
          ))),
      Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: (TextField(
            controller: passwordController,
            keyboardType: TextInputType.text,
            obscureText: _isObscure,
            decoration: InputDecoration(
              labelText: 'Enter your Password',
              hintText: 'Enter your password',
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ))),
      const SizedBox(
        height: 40,
      ),
      Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: SizedBox(
            height: 50, //height of button
            width: 500,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Screen(name: '')));
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(fontSize: 20),
                )),
          )),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Does not have account? ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Sign In",
            style: TextStyle(
                fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ],
      )
    ])));
  }
}
