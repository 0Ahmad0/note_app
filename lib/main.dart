import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/models.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/view/constants.dart';
import 'view/notes_view.dart';
import '';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlockObserver();
  await Hive.openBox<NoteModel>(KNotesBox);
  // important don't forget
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Poppins",
            brightness: Brightness.dark
        ),
        home: const NotesView(),
      ),
    );
  }
}