import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pak_tourism/credentials_usecases/forgot_password_usecase.dart';
import 'package:pak_tourism/credentials_usecases/get_create_current_user_usecase.dart';
import 'package:pak_tourism/credentials_usecases/sign_in_usecase.dart';
import 'package:pak_tourism/credentials_usecases/sign_up_usecase.dart';
import 'package:pak_tourism/model/user_model.dart';

part 'credential_state.dart';

class CredentialCubit extends Cubit<CredentialState> {
  SignUpUseCase signUpUseCase=SignUpUseCase();
  SignInUseCase signInUseCase=SignInUseCase();
  ForgotPasswordUseCase forgotPasswordUseCase=ForgotPasswordUseCase();
  GetCreateCurrentUserUseCase getCreateCurrentUserUseCase=GetCreateCurrentUserUseCase();
  CredentialCubit() : super(CredentialInitial());


  Future<void> forgotPassword({required String email})async{
    try{
      await forgotPasswordUseCase.call(email);
    }on SocketException catch(_){
      emit(CredentialFailure());
    }catch(_){
      emit(CredentialFailure());
    }
  }

  Future<void> signInSubmit({required UserModel userEntity})async{
    emit(CredentialLoading());
    try{
      await signInUseCase.call(userEntity);
      emit(CredentialSuccess());
    }on SocketException catch(_){
      emit(CredentialFailure());
    }catch(_){
      emit(CredentialFailure());
    }
  }


  Future<void> signUpSubmit({required UserModel userEntity})async{
    emit(CredentialLoading());
    try{
      await signUpUseCase.call(userEntity);
      await getCreateCurrentUserUseCase.call(userEntity);
      emit(CredentialSuccess());
    }on SocketException catch(_){
      emit(CredentialFailure());
    }catch(_){
      emit(CredentialFailure());
    }
  }
}
