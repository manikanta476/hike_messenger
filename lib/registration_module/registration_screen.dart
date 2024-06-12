import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle
                    ),
                  ),
                  Positioned.fill(
                    bottom: 0,
                    left: 20,
                    child: Align(
                      alignment: Alignment.topRight,
                        child: Container(
                          height: 30, width: 30,
                          child: Icon(Icons.edit),
                          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),)),
                  ),
                  Positioned.fill(
                    // bottom: 0,
                    right: 20,
                    child: Align(
                      alignment: Alignment.bottomRight,
                        child: Container(
                          child: Icon(Icons.camera_alt_outlined),
                          height: 30, width: 30, decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),)),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const TextField(
                keyboardType: TextInputType.name,
                readOnly: false,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  // label: Text("username"),
                    labelText: "Username",
                    hintText: "Enter username",
                    helperText: "Please enter username",
                    prefixIcon: Icon(Icons.person_outline)
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.number,
                maxLines: 1,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.remove_red_eye),
                    )
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter First name",
                    labelText: "First name",
                    prefixIcon: Icon(Icons.person_off)
                ),
              ),
              const TextField(
                keyboardType: TextInputType.name,
                readOnly: false,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  // label: Text("username"),
                    labelText: "Username",
                    hintText: "Enter username",
                    helperText: "Please enter username",
                    prefixIcon: Icon(Icons.person_outline)
                ),
              ),
              const TextField(
                keyboardType: TextInputType.name,
                readOnly: false,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  // label: Text("username"),
                    labelText: "Username",
                    hintText: "Enter username",
                    helperText: "Please enter username",
                    prefixIcon: Icon(Icons.person_outline)
                ),
              ),
              const TextField(
                keyboardType: TextInputType.name,
                readOnly: false,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  // label: Text("username"),
                    labelText: "Username",
                    hintText: "Enter username",
                    helperText: "Please enter username",
                    prefixIcon: Icon(Icons.person_outline)
                ),
              ),
              const TextField(
                keyboardType: TextInputType.name,
                readOnly: false,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  // label: Text("username"),
                    labelText: "Username",
                    hintText: "Enter username",
                    helperText: "Please enter username",
                    prefixIcon: Icon(Icons.person_outline)
                ),
              ),
              const TextField(
                keyboardType: TextInputType.name,
                readOnly: false,
                obscureText: false,
                maxLines: 1,
                decoration: InputDecoration(
                  // label: Text("username"),
                    labelText: "Username",
                    hintText: "Enter username",
                    helperText: "Please enter username",
                    prefixIcon: Icon(Icons.person_outline)
                ),
              ),
              const SizedBox(height: 30,),
              RichText(
                  text: TextSpan(
                    text: "Agree with ",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.blueGrey),
                    children: [
                      TextSpan(
                          text: "Terms & Conditions",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange,
                          decoration: TextDecoration.underline
                      ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = (){
                            debugPrint("clicked on Terms & conditions");
                          }
                      ),
                      TextSpan(text: " and you have to agree "),
                      TextSpan(
                        text: "Privacy & Policy", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange, decoration: TextDecoration.underline
                      ),
                      ),
                    ]
                  ),
              ),
              const SizedBox(height: 50,),
              ElevatedButton(
                  onPressed: (){

                  },
                  child: Text("Login")),
              const Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey, thickness: 1, height: 1,)),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text("or")),
                  Expanded(child: Divider(color: Colors.grey, thickness: 1, height: 1,)),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  Icon(Icons.verified),
                  Spacer(flex: 2),
                  Icon(Icons.add_business_outlined),
                  Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}
