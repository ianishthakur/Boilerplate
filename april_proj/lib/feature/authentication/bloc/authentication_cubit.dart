import 'package:bloc/bloc.dart';
import 'package:boilerplate/common/shared_pref/shared_pref.dart';
import 'package:boilerplate/feature/authentication/resource/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthState> {
  final UserRepository userRepository;

  AuthenticationCubit({required this.userRepository})
      : super(AuthUninitialized());

  logout() async {
    await userRepository.deleteToken();
    await userRepository.deleteUser();
  }

  loginWithGoogle() {}

  loginWithFacebook() async {
    
  }

  emailLogin(String email, String password) async {
    final auth = FirebaseAuth.instance;

    auth.currentUser;
    emit(AuthLoading(loadingMessage: "Signing you In...."));

    try {
      await auth.signOut();
      final cred = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      print(cred.toString());
      emit(AuthSuccess(user: cred.user));
    } on FirebaseAuthException catch (e) {
      print(e);
      emit(AuthError(errorMessage: e.message ?? "Could not sign in"));
    } catch (e) {
      emit(AuthError(errorMessage: "Could not sign in"));
    }
  }

  emailRegister(String email, String password) async {
    final auth = FirebaseAuth.instance;
    try {
      emit(AuthLoading(loadingMessage: "Creating Account...."));

      final credentials = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      emit(AuthSuccess(user: credentials.user));

      print(credentials);
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      emit(AuthError(errorMessage: e.message ?? "Could not sign in"));
    } catch (e) {
      print(e);
      emit(AuthError(errorMessage: "Could not sign in"));
    }
  }

  fetchProfile() async {
    await userRepository.fetchUserProfile();
  }
}
