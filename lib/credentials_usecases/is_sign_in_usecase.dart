



import 'package:pak_tourism/firebase_remote_data_source_impl.dart';

class IsSignInUseCase {

  final FirebaseRemoteDataSourceImpl repository=FirebaseRemoteDataSourceImpl();



  Future<bool> call()async{
    return repository.isSignIn();
  }
}