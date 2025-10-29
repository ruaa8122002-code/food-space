import 'package:app11/foodspace.dart/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class loginScr extends StatefulWidget {
  @override
  State<loginScr> createState() => _loginScrState();
}

class _loginScrState extends State<loginScr>
    with SingleTickerProviderStateMixin {
  var snackbar = SnackBar(
    content: Text("Invalid Email Or Password"),
    backgroundColor: Colors.black.withOpacity(0.2),
    action: SnackBarAction(label: "Cancel", onPressed: () {}),
  );
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController fnamecontroller = TextEditingController();
  TextEditingController lnamecontroller = TextEditingController();
  TextEditingController email1controller = TextEditingController();
  TextEditingController pass1controller = TextEditingController();
  var email = "farah@gmail.com";
  var pass = '1111';
  bool _obsecureText = true;
  bool _obsecureText1 = true;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = true;
  late TabController tabController;

  @override
  void dispose() {
    email1controller.dispose();
    pass1controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            dividerColor: Color(0xff0000FF),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            splashBorderRadius: BorderRadius.circular(20),
            tabs: [
              Tab(
                text: "Login",
              ),
              Tab(
                text: "Sign Up",
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 70),
                      child: Image(image: AssetImage('Images/logo.png')),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        label: Text("Email address"),
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: "@gmail.com",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xff0000FF),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      obscureText: _obsecureText,
                      controller: passcontroller,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          label: Text("Password"),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          hintText: "Enter your password here",
                          prefixIcon: Icon(
                            Icons.password_rounded,
                            color: Color(0xff0000FF),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obsecureText = !_obsecureText;
                              });
                            },
                            icon: Icon(_obsecureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          )),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 190),
                      child: TextButton(
                          onPressed: () {}, child: Text("Forget Password ? ")),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff0000FF)),
                      child: MaterialButton(
                        onPressed: () {
                          if (email == emailcontroller.text &&
                              pass == passcontroller.text) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => home()));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Image(image: AssetImage('Images/logo.png')),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        controller: fnamecontroller,
                        decoration: InputDecoration(
                          label: Text("First name"),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          hintText: "Enter your first name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff0000FF),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        controller: lnamecontroller,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          label: Text("Last name"),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          hintText: "Enter your Last name",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff0000FF),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (email1controller.text == '') {
                            return 'This is a required field';
                          }
                        },
                        cursorColor: Colors.blue,
                        keyboardType: TextInputType.emailAddress,
                        controller: email1controller,
                        decoration: InputDecoration(
                          label: Text("Email address"),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          hintText: "@gmail.com",
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xff0000FF),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value!.length != 10 && value.isNotEmpty) {
                            return 'phone number must contain 10 numbers';
                          }
                        },
                        obscureText: _obsecureText1,
                        controller: pass1controller,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            label: Text("Password"),
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            hintText: "Enter your password here",
                            prefixIcon: Icon(
                              Icons.password_rounded,
                              color: Color(0xff0000FF),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obsecureText1 = !_obsecureText1;
                                });
                              },
                              icon: Icon(_obsecureText1
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            )),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff0000FF)),
                        child: MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() == true) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => home(),
                                ),
                              );
                            }
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
