import "package:flutter/material.dart";

class Login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login1.png", fit: BoxFit.cover),
          const SizedBox(height: 20),
          const Text(
            "Welcome",
            style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.italic,
                fontSize: 30),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", labelText: "Username")),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password")),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      print("Hi Buddy");
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
