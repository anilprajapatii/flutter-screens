import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedpreference extends StatelessWidget {
  // const sharedpreference({super.key});
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared-preference"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Username text field
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 20), // Add some vertical space
            // Password text field
            TextField(
              controller: _passwordController,
              obscureText: true, // Hide password characters
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            // ignore: unrelated_type_equality_checks

            const SizedBox(height: 20), // Add some vertical space
            // Login button
            ElevatedButton(
              onPressed: () async {
                if (_usernameController.text == 'anil' &&
                    _passwordController.text == '') {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString('string', _usernameController.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Login successful')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Invalid username or password')),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  addStringtoSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('string', _usernameController.text);
  }
}
