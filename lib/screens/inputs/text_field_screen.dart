import 'package:all_concepts/variables/variables.dart';
import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key, this.description = "Empty!"});

  final String description;

  @override
  State<StatefulWidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldScreen> {
  String errorMessage = "Error message appears here.";
  bool error = false;

  bool hidePassword = true;

  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  TextEditingController tecPhoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Variables.getLeftRightPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // simple input
              const SizedBox(height: 16.0),
              Text(widget.description),
              const SizedBox(height: 10.0),
              const TextField(),
              const SizedBox(height: 10.0),
              const Text("Simple text field"),
              const SizedBox(height: 20.0),

              // message section
              if (error)
                Text(
                  errorMessage,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),

              const SizedBox(height: 10.0),

              // decorated input
              TextField(
                controller: tecEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  hintText: "someone@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),

              const SizedBox(height: 10.0),
              TextField(
                obscureText: hidePassword,
                obscuringCharacter: '*',
                controller: tecPassword,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon: const Icon(Icons.panorama_fish_eye),
                  ),
                  hintText: "********",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: tecPhoneNumber,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone_in_talk),
                  hintText: "Phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    String email = tecEmail.text.toString();
                    String password = tecPassword.text.toString();
                    String phoneNumber = tecPhoneNumber.text.toString();

                    if (email.isNotEmpty &&
                        password.isNotEmpty &&
                        phoneNumber.isNotEmpty) {
                      setState(() {
                        error = true;
                        errorMessage =
                            "Email : $email\nPassword : $password\nPhone number : $phoneNumber\n";
                      });

                      print("Email : $email");
                      print("Phone : $password");
                      print("Phone number : $phoneNumber");
                    } else {
                      setState(() {
                        error = true;
                        errorMessage = "Please enter all the details.";
                      });
                    }
                  },
                  child: const Text("Submit"),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tecEmail.text = "";
                      tecPassword.text = "";
                      tecPhoneNumber.text = "";
                      error = false;
                    });
                  },
                  child: const Text("Reset"),
                ),
              ),
              const SizedBox(height: 10.0),
              const Text("Decorated input"),
            ],
          ),
        ),
      ),
    );
  }
}
