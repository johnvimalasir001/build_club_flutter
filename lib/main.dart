import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Center(
                  child: Image.asset(
                    "assets/cart.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                "Customer Login",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Container(
                height: 70,
                width: 300,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 300,
                // margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.green[300],
                  ),
                  child: const Center(
                      child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Don't have an account ?  Sign Up",
                  style: TextStyle(
                      color: Colors.green[300],
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 1,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                      ),
                    ),
                    const Text(
                      "OR",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "Merchant Login",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                  ),
                ),
                child: const Icon(
                  Icons.store,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
