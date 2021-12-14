import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pak_tourism/model/user_model.dart';


class FirebaseRemoteDataSourceImpl {
  FirebaseFirestore fireStore =FirebaseFirestore.instance;
  FirebaseAuth auth=FirebaseAuth.instance;




  Future<void> getCreateCurrentUser(UserModel user) async {
    final userCollection = fireStore.collection("users");
    final uid = await getCurrentUId();
    userCollection.doc(uid).get().then((userDoc) {
      final newUser = UserModel(
          uid: uid,
          firstName: user.firstName,
          secondName: user.secondName,
          email: user.email,).toMap();
      if (!userDoc.exists) {
        userCollection.doc(uid).set(newUser);
        return;
      } else {
        userCollection.doc(uid).update(newUser);
        print("user already exist");
        return;
      }
    }).catchError((error) {
      print(error);
    });
  }



  Future<String> getCurrentUId() async => auth.currentUser!.uid;


  Future<bool> isSignIn() async => auth.currentUser?.uid != null;





  Future<void> signOut() async {
    await auth.signOut();
  }



  Future<void> forgotPassword(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }


  Future<void> signIn(UserModel user) async {
    await auth.signInWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }


  Future<void> signUp(UserModel user) async {
    await auth.createUserWithEmailAndPassword(
        email: user.email!, password: user.password!);
  }


}
