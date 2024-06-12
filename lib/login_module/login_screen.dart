import 'package:flutter/material.dart';
import 'package:hike_messenger/constants/text_constants.dart';
import 'package:hike_messenger/custom_widgets/text_input_constants.dart';

import '../custom_widgets/button_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController formController = TextEditingController();


  bool securePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              keyboardType: TextInputType.name,
              readOnly: false,
              obscureText: false,
              maxLines: 1,
              decoration: const InputDecoration(
                // label: Text("username"),
                labelText: TextConstants.username,
                hintText: "Enter username",
                helperText: "Please enter username",
                prefixIcon: Icon(Icons.person_outline)
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.number,
              obscureText: securePassword,
              maxLines: 1,
              decoration: InputDecoration(
                fillColor: Colors.blueGrey,
                filled: true,
                  prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: (){
                    debugPrint("Visible password");

                    setState(() {
                      securePassword = !securePassword;
                    });

                  },
                  icon: Icon(Icons.remove_red_eye),
                )
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: formController,
              decoration: InputDecoration(
                hintText: "Enter First name",
                labelText: "First name",
                prefixIcon: Icon(Icons.person_off)
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
                onPressed: (){
                  debugPrint("entered username is ${usernameController.text}");
                  usernameController.text = "Krishna's Text";
                },
                child: Text(TextConstants.loginText)),
            rectangleRoundedCornerButton(
                "Login",
              (){
                  print("Sign IN button clicked");
                }
            ),
            rectangleRoundedCornerButton(
                "Sign Up",
                (){
                  print("Sign Up button clicked");
                },
                btnBGColor: Colors.blue),

            customTextInputField("Username"),
            customTextInputField("Password"),
          ],
        ),
      ),
    );
  }


}
