import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';
import 'package:food_delivery_app/pages/register_page.dart';
import 'package:food_delivery_app/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  
  const LoginPage ({super.key, required this.onTap});



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();


  //login method
  Future<void> login() async {
    // get instance of auth
    final _authService = AuthService();



    // try sign in
    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }

    // display any errors
    catch (e) {
      showDialog(
          context: context,
         builder: (context) => AlertDialog(
          title: Text(e.toString()),
         ),
        );
    }
  
  }

  // forgot password

  void forgotPw() {
    showDialog(context: context, 
    builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text("User tapped forgot password"),
    ),
    );
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
              Text("Food Delivery App",
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

              const SizedBox(height: 25),
            //sign in button

              MyButton(
                text: "Sign In",
                 onTap: login, 
                 
                ),

                  const SizedBox(height: 25),
        

            //not a member? Register
            TextButton(
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(onTap: () { widget.onTap; },)));
                }, 
                child: Text(
                  "Don't have an account? Register here",
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