



import '../firebase_remote_data_source_impl.dart';

class GetCurrentUIDUseCase{
  final FirebaseRemoteDataSourceImpl repository=FirebaseRemoteDataSourceImpl();


  Future<String> call()async{
    return await repository.getCurrentUId();
  }
}