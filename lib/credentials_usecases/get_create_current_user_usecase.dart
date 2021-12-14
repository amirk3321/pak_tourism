


import 'package:pak_tourism/model/user_model.dart';

import '../firebase_remote_data_source_impl.dart';

class GetCreateCurrentUserUseCase{
  final FirebaseRemoteDataSourceImpl repository=FirebaseRemoteDataSourceImpl();



  Future<void> call(UserModel user)async{
    return repository.getCreateCurrentUser(user);
  }
}