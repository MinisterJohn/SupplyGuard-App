import "package:firebase_auth/firebase_auth.dart";
import 'package:flutter/material.dart';
import "package:healthcare_4/firebase_auth_implementation/firebase_auth_services.dart";
import "package:healthcare_4/global/common/toast.dart";

class Signup extends StatelessWidget {
  const Signup({super.key});

  // const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue[600],
        ),
        body: const SignupForm());
  }
}

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();

  bool passwordToggle = true;
  bool cPasswordToggle = true;
  RegExp emailValidate = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$",
  );

  final FirebaseAuthServices _auth = FirebaseAuthServices();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.clear();
    passwordController.clear();
    cPasswordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Email:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'example123@domain.com',
                      suffixIcon: Icon(Icons.email),
                      border: UnderlineInputBorder(),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your email';
                      } else if (!emailValidate.hasMatch(value))
                        return "Invalid Email";
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Password:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    obscureText: passwordToggle,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Minimum of 6 characters",
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passwordToggle = !passwordToggle;
                          });
                        },
                        child: Icon(passwordToggle
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: const UnderlineInputBorder(),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your password';
                      } else if (passwordController.text.length < 6)
                        return "Minimum of 6 characters";
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Confirm Password:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    obscureText: cPasswordToggle,
                    controller: cPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Minimum of 6 characters",
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            cPasswordToggle = !cPasswordToggle;
                          });
                        },
                        child: Icon(cPasswordToggle
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: const UnderlineInputBorder(),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your password';
                      } else if (cPasswordController.text.length < 6)
                        return "Minimum of 6 characters";
                      else if(cPasswordController.text != passwordController.text)
                        return "Password mismatch";
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate() && isLoading == false) {
                  _signUp();

                }
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blue[600]),
              child: isLoading
                  ? const SizedBox(
                height: 10,
                width: 10,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
                  : const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _signUp() async {
    final email = emailController.text;
    final password = passwordController.text;
    setState(() {
      isLoading = true;
    });
    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      setState(() {
        isLoading = false;
      });
      showToast(message: "Welcome to SafeGuard", color: Colors.blue);
      Navigator.pushNamed(context, "/login");
    } else {
      setState(() {
        isLoading = false;
      });
      emailController.clear();
      passwordController.clear();
      cPasswordController.clear();
      showToast(message: "some error occurred");
    }
  }
}
