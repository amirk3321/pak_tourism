import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pak_tourism/cubit/auth/auth_cubit.dart';
import 'package:pak_tourism/cubit/credential/credential_cubit.dart';
import 'package:pak_tourism/model/user_model.dart';
import 'package:pak_tourism/screens/pages/registration.dart';

import '../home_screen.dart';
import 'home_page.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override

  // form key
  final formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController= new TextEditingController();
  final TextEditingController passwordController= new TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  // display error message
  String? errorMessage;

  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CredentialCubit,CredentialState>(
        listener: (context,credentialState){
          if (credentialState is CredentialSuccess) {
            BlocProvider.of<AuthCubit>(context).loggedIn();
            // Future.delayed(Duration(seconds: 2),(){
            //   Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            // });
          }
          if (credentialState is CredentialFailure){
          }
        },
        builder: (context,credentialState){
          if (credentialState is CredentialLoading) {
            return Center(
              child: CircularProgressIndicator(backgroundColor: Colors.blue,),
            );
          }
          if (credentialState is CredentialSuccess) {
            return BlocBuilder<AuthCubit, AuthState>(
              builder: (context, authState) {
                if (authState is Authenticated) {
                  return HomeScreen();
                } else {
                  print("Unauthenticsted");
                  return _bodyWidget();
                }
              },
            );
          }

          return _bodyWidget();
        },
      ),
    );
  }


  _bodyWidget(){
    // email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value)
      {
        if(value!.isEmpty)
        {
          return ("Enter your email");
        }
        // reg exprssion for email validation
        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
        {
          return ("Please Enter a valid email");
        }
        return null;
      },

      onSaved: (value)
      {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ) ,
    );

    //password

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value)
      {
        RegExp regex = new RegExp(r'^.{6,} $');
        if(value!.isEmpty){
          return("Password required for login");
        }
        if  (!regex.hasMatch(value)){
          return ("Please enter valid password(Min.6 Character)");
        }
      },

      onSaved: (value)
      {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ) ,
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.black,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          BlocProvider.of<CredentialCubit>(context).signInSubmit(userEntity: UserModel(
            email: emailController.text,
            password: passwordController.text,
          ));
        },
        child: Text("Login", textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          height: 200,
                          child: Image.asset("assets/logo.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(height: 45),

                      emailField,
                      SizedBox(height: 25),

                      passwordField,
                      SizedBox(height: 35),

                      loginButton,
                      SizedBox(height: 15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account?"),
                          GestureDetector(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                RegistrationScreen()));
                          },
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.black,

                                  fontWeight: FontWeight.bold, fontSize: 15), ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
//lodgin function
  void signIn(String email, String password) async {
    if (formKey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
          Fluttertoast.showToast(msg: "Login Successful"),
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen())),
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
             errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
             errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
             errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
             errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
             errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
             errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }

}
