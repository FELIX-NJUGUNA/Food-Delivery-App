import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // get instance of firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;




  // get current user

  User? getCurrentUser(){
    return _firebaseAuth.currentUser;
  }


  // sign in
  Future<String> signInWithEmailPassword(String email, String password) async {
    // try sign user in
    try {
      

      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, 
        password: password
        );


      // Return the UID of the newly created user
      return userCredential.user!.uid;
    }
    // catch any errors on fail
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }

  }

  // sign up
  Future<UserCredential> signUpWithEmailPassword(String email, String password) async {
    // try sign user in
    try {
      

      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, 
        password: password
        
        );
   

      return userCredential;
    }
    // catch any errors on fail
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }

  }



  // sign out
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }



}