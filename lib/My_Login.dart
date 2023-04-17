import 'package:flutter/material.dart';
import 'package:new_app/My_signin.dart';

class My_login extends StatefulWidget {
  const My_login({super.key});
  @override
  State<StatefulWidget> createState() => _MyLoginState();
}

class _MyLoginState extends State<My_login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 150),
                child: const Text(
                  "Login..",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.44,
                    left: 35,
                    right: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          fillColor: Colors.grey.shade50,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          fillColor: Colors.grey.shade50,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sign In",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 27),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black54,
                          child: IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.arrow_forward),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => My_signin()));
                            },
                            child: const Text(
                              "Don't have account? Sign Up",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 15,
                                  color: Colors.black54),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 13,
                                  color: Colors.brown),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
