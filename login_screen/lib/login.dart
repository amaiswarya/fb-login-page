import 'package:flutter/material.dart';

import 'package:form_field_validator/form_field_validator.dart';

import 'login_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // String name = "Aiswarya";
  // String password = "123";

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  // String? validatePassword(String value) {
  //   if (value.isEmpty) {
  //     return "* Required";
  //   } else if (value.length < 6) {
  //     return "Password should be atleast 6 characters";
  //   } else if (value.length > 15) {
  //     return "Password should not be greater than 15 characters";
  //   } else {
  //     return null;
  //   }
  // }

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
      child: Form(
        key: formkey,
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
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: (TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Name Here',
                hintText: 'Enter Name Here',
              ),
              autofocus: false,
              validator: (value) =>
                  value!.isEmpty ? 'Name cannot be blank' : null,
            )),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
                validator: MultiValidator([
                  RequiredValidator(errorText: "* Required"),
                  EmailValidator(errorText: "Enter valid email id"),
                ])),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: (TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.text,
                obscureText: _isObscure,
                validator: (value) =>
                    value!.isEmpty ? 'Password cannot be blank' : null,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
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
                      if (formkey.currentState!.validate()) {
                        // if (name == "Aiswarya" && password == "123")
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Screen(name: nameController.text)));
                        }
                      }
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
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ]),
      ),
    )));
  }
}
