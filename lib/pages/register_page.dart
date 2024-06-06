import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
import 'package:food_delivery_app/pages/login_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {

final void Function()? onTap;


  const RegisterPage({super.key, required this.onTap});

  @override
   State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
 // text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


  // register method
    Future<void> register() async {
      // get auth service
        final authService = AuthService();

      // passwords match -> create user
      if(passwordController.text==confirmPasswordController.text){
        // try creating user
        try{
          await authService.signUpWithEmailPassword(emailController.text, passwordController.text);

        }

        // THROW ERROR
        catch (e) {
          showDialog(
            context: context,
           builder: (context) => AlertDialog(
            title: Text(e.toString()),
           ),
          );
        }
      } else {

        // SHOW ERRORS
      showDialog(
            context: context,
           builder: (context) => const AlertDialog(
            title: Text("Password do not match"),
           ),
          );
      }


    // password do not match -> throw error
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,

              ),

              const SizedBox(height: 25),

            //message, app slogan
              Text("Let us create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ),

              const SizedBox(height: 25),

            //email textfield


              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false

              ),

              const SizedBox(height: 10),

            //password textfield

                MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true

              ),

                 const SizedBox(height: 10),

            //password textfield

                MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                obscureText: true

              ),

              const SizedBox(height: 25),
            //sign in button

              MyButton(
                text: "Sign Up",
                 onTap: register
                 ),

                  const SizedBox(height: 25),

            //already have an account? Login
            //  Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("Already have an account?",
            //     style: TextStyle(
            //       color: Theme.of(context).colorScheme.inversePrimary
            //     ),
            //     ),
            //      const SizedBox(width: 4),

            //     TextButton(
            //       onPressed:  widget.onTap,
            //       child: Text("Login here",
            //       style: TextStyle(
            //         color: Theme.of(context).colorScheme.inversePrimary,
            //         fontWeight: FontWeight.bold
            //       ),

            //       ),
            //     ),
            //   ],
            // )

             TextButton(
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(onTap: () { widget.onTap; },)));
                },
                child: Text(
                  "Already have an account? Login here",
                 style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
                )

              ),


          ],
        ),
      ),
    );
  }

}