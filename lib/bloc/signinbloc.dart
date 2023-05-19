import 'dart:async'; 
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(LoginInitial()) {
    on<VerifyPassword>(verifyPassword);
  }
  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<LoginStates> emit) async {
    emit(Loading());
    Map map = {"phone": event.name, "password": event.password};
    print(map);
    if (event.name == "asd" && event.password == "123") {
      emit(LoginSuccess());
    } else {
      emit(LoginError(error: "invalid user"));
    }
  }
}
class LoginEvents {}
class VerifyPassword extends LoginEvents {
  final String? name, password;
  VerifyPassword({this.name, this.password});
}
class LoginStates {}
class LoginInitial extends LoginStates {}
class Loading extends LoginStates {}
class LoginSuccess extends LoginStates {}
class LoginError extends LoginStates {
  final String? error;
  LoginError({this.error});
}
