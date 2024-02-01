import 'package:flutter/material.dart';
import 'package:untitled/Screens/Forgor_Password_screen.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18),
            ),
          ),
        ),
        title: Text("SignIn"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 8,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 6,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "asset/images/logo.png",
              height: 100,
              width: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white),
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Email is empty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 25),
                    fillColor: Colors.blueGrey[300]?.withOpacity(0.6),
                    filled: true,
                    hintText: "Email address",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(37),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white),
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Password is empty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 25),
                    fillColor: Colors.blueGrey[300]?.withOpacity(0.6),
                    filled: true,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(37),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: togglePassword(),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot_Password_Screen()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 250),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  Text(
                    "Remember Me",
                    style: TextStyle(color: Colors.white
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: (){
                    // verify
                  },
                  child: Text("Signin"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 2,
                    width: 100,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 30,
                  width: 50,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.12),
                    child: Center(child: Text("OR")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    width: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Text("Need an Account?",style: TextStyle(color: Colors.white),),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: (){
                  // verify
                },
                child: Text("SignUp"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

IconButton togglePassword() {
  return IconButton(
    onPressed: () {},
    icon: Icon(Icons.visibility),
  );
}


void main() {
  runApp(MaterialApp(
    home: Login_Screen(),
  ));
}
