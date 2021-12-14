import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pak_tourism/credentials_usecases/get_current_uid_usecase.dart';
import 'package:pak_tourism/credentials_usecases/is_sign_in_usecase.dart';
import 'package:pak_tourism/credentials_usecases/sign_out_usecase.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  IsSignInUseCase isSignInUseCase=IsSignInUseCase();
  SignOutUseCase signOutUseCase=SignOutUseCase();
  GetCurrentUIDUseCase getCurrentUIDUseCase=GetCurrentUIDUseCase();

  AuthCubit() : super(AuthInitial());

  Future<void> appStarted() async{
    try{
      bool isSignIn=await isSignInUseCase.call();

      if (isSignIn){
        final uid=await getCurrentUIDUseCase.call();
        emit(Authenticated(uid: uid));
      }else
        emit(UnAuthenticated());

    }catch(_){
      emit(UnAuthenticated());
    }
  }
  Future<void> loggedIn() async{
    try{
      final uid= await getCurrentUIDUseCase.call();
      emit(Authenticated(uid: uid));
    }catch(_){

    }
  }
  Future<void> loggedOut() async{
    try{
      await signOutUseCase.call();
      emit(UnAuthenticated());
    }catch(_){}

  }
}
