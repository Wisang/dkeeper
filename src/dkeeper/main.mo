import List "mo:base/List";
import Debug "mo:base/Debug";

actor DKeeper {
  public type Note = {
    title: Text;
    content: Text;
  };

  var notes: List.List<Note> = List.nil<Note>();

  public func createNote(titleTetxt: Text, contentText: Text) {
    let nowNote: Note = { 
      title = titleTetxt; 
      content = contentText 
    };

    notes := List.push(nowNote, notes);
    Debug.print(debug_show(notes));
  };

  public query func readNotes() : async [Note] {
    return List.toArray(notes);
  };
}