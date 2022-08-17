import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignUpPage(title: 'Figma SignUp Page'),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  get formKey => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text(
      //     'Sign Up Page',
      //     style: GoogleFonts.openSans(),
      //   ),
      // ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            Container(
            padding: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
                // child: Text("Create Account",
                //   style: GoogleFonts.openSans(),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 10,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      const SizedBox(width: 47,),
                      const SizedBox(height: 30,),
                      Text("Create Account",
                          style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 47,),
                       Text("Hi, kindly fill in the form to proceed",
                        style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 30,),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Form(key: formKey,
                    child: Column(
                        children: <Widget>[
                          //Full name field
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "full name is empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Full Name"
                            ),
                            // style: GoogleFonts.openSans(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: const Color(0XFF030303)),
                          ),

                          //User name filed
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "enter username";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "User Name"
                            ),
                            // style: GoogleFonts.openSans(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: const Color(0XFF030303)),
                          ),

                          //Phone number field
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "enter phone number";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "+234         Telephone"
                            ),
                            // style: GoogleFonts.openSans(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: const Color(0XFF030303)),
                          ),

                          //Email field....
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "email is empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Email"
                            ),
                            // style: GoogleFonts.openSans(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: const Color(0XFF030303)),
                          ),

                          //Date of birth and Gender field....
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "enter Date of Birth, gender is empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Date of Birth        Gender"
                            ),
                          ),

                          //Relationship Status field....
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "Relationship Status is empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Relationship Status"
                            ),
                            // style: GoogleFonts.openSans(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: const Color(0XFF030303)),
                          ),

                          //Interest field
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "enter interest";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Interest"
                            ),
                            // style: GoogleFonts.openSans(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: const Color(0XFF030303)),
                          ),

                          //Password field
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "password is empty";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Password",
                              suffixIcon: Icon(CupertinoIcons.eye,),
                            ),
                            // style: GoogleFonts.openSans(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: const Color(0XFF030303)),
                          ),

                          //Confirm password field
                          const SizedBox(height: 30,),
                          TextFormField(
                            validator: (String? val){
                              if(val!.isEmpty){
                                return "please confirm password";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Confirm Password",
                              suffixIcon: Icon(CupertinoIcons.eye,),
                            ),
                            // style: GoogleFonts.openSans(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: const Color(0XFF030303)),
                          ),

                          //Create Account Button....
                          const SizedBox(height: 30),
                          CupertinoButton.filled(
                            borderRadius: BorderRadius.circular(100),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const LoginPage(title: "Donation");
                            }));},
                            child: Text('Create Account',
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),),
                          ),
                          const SizedBox(height: 16),
                          Text("Already have an account?",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),),
                          Text("Login",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.yellowAccent,
                            ),),
                          const SizedBox(height: 30,),
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
