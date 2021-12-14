






import '../firebase_remote_data_source_impl.dart';

class ForgotPasswordUseCase{

  final FirebaseRemoteDataSourceImpl repository=FirebaseRemoteDataSourceImpl();


  Future<void> call(String email){
    return repository.forgotPassword(email);
  }
}