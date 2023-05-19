import 'dart:async';

import 'package:bloc/bloc.dart';

// Define the events
abstract class SignupEvent {}

class VerifyDistrict extends SignupEvent {
  final String district;

  VerifyDistrict({required this.district});
}

// Define the states
abstract class SignupStates {}

class Fetching extends SignupStates {}

class SignupSuccess extends SignupStates {}

class SignupFailure extends SignupStates {}

// Define the bloc
class SignupBloc extends Bloc<SignupEvent, SignupStates> {
  SignupBloc() : super(SignupSuccess());

  @override
  Stream<SignupStates> mapEventToState(SignupEvent event) async* {
    if (event is VerifyDistrict) {
      yield Fetching();

      try {
        // Simulate an asynchronous operation
        await Future.delayed(Duration(seconds: 2));

        // Perform the verification logic
        // Replace the code below with your actual implementation
        if (event.district == 'Kottayam') {
          yield SignupSuccess();
        } else {
          yield SignupFailure();
        }
      } catch (_) {
        yield SignupFailure();
      }
    }
  }
}
