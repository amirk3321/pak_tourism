







import 'package:pak_tourism/model/user_model.dart';

import '../firebase_remote_data_source_impl.dart';

class SignUpUseCase{
  final FirebaseRemoteDataSourceImpl repository=FirebaseRemoteDataSourceImpl();

  Future<void> call(UserModel user){
    return repository.signUp(user);
  }
}