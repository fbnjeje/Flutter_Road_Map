import 'package:firebase_auth/firebase_auth.dart';

class FireAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }
}
