







import '../firebase_remote_data_source_impl.dart';

class IsSignInUseCase{
  final FirebaseRemoteDataSourceImpl repository=FirebaseRemoteDataSourceImpl();



  Future<bool> call(){
    return repository.isSignIn();
  }
}