import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emailController = TextEditingController();
  var pwdilController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        // CrossAxisAlignment.center,

        children: [
          Center(
            child: Image.asset(
              'assets/logo.png',
              height: 70,
              width: 750,
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.mail,
                  color: Colors.grey,
                ),
                hintText: "Email/Phone Number"),
          ),
          TextFormField(
            controller: pwdilController,
            decoration: const InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                hintText: "Password"),
          ),
          Row(
            children: [
              Checkbox(value: false, onChanged: (v) {}),
              const Text(
                "Remeber me ",
                style: TextStyle(color: Colors.pink),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.pink),
                  )),
            ],
          ),
          const SizedBox(height: 45),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 25),
          const Align(
            alignment: Alignment.center,
            child: Text("or Login with"),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/fb.png',
                  height: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/insta.png',
                  height: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/link.png',
                  height: 35,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign up",
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}