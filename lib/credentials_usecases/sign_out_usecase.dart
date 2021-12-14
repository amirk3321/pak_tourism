



import '../firebase_remote_data_source_impl.dart';

class SignOutUseCase {
  final FirebaseRemoteDataSourceImpl repository=FirebaseRemoteDataSourceImpl();


  Future<void> call()async{
    return repository.signOut();
  }
}