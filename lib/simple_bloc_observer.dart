import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class SimpleBlockObserver implements BlocObserver{
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    debugPrint('change $change');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    // TODO: implement onClose
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    // TODO: implement onCreate
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onTransition(Bloc bloc, Transition<dynamic, dynamic> transition) {
    // TODO: implement onTransition
  }

  @override
  void onEvent(Bloc? bloc, Object? event) {
    // TODO: implement onEvent
  }

}