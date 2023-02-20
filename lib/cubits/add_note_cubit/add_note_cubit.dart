import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/models.dart';
import 'package:note_app/view/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    try{
      var notesBox = Hive.box<NoteModel>(KNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    }on Exception catch(e){
      emit(AddNoteFailure(e.toString()));
    }

  }
}
