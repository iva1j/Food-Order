import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

FirebaseAuth auth = FirebaseAuth.instance;
final gSignIn = GoogleSignIn();

Future<bool> googleSignIn() async {
  GoogleSignInAccount googleSignInAccount = await gSignIn.signIn();

  if (googleSignInAccount != null) {
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    AuthResult result = await auth.signInWithCredential(credential);

    FirebaseUser user = await auth.currentUser();
    print(user.uid);

    return Future.value(true);
  }
}

Future<bool> signOutUser() async {
  FirebaseUser user = await auth.currentUser();
  print(user.providerData[1].providerId);
  if (user.providerData[1].providerId == 'google.com') {
    await gSignIn.disconnect();
  }
  await auth.signOut();
  return Future.value(true);
}
