import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_app/Note/note.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {

  final _controller = TextEditingController();
  //final _title = TextEditingController();

  int boolRemove = 0;
  String noteString = ' ';

  final _note = <String>[];
  //final _titleList = <String>[];
  final _boolList = <dynamic>[];
  //final _removedNote = <String>[];

  //final _allNotes = <String>[];

  int bool = 0;

  widgetBuildSuggestions() {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (_note.isEmpty) {
          return const Text('');
        }
        else if (i < _note.length) {
          return cardTask(_note[i], i);
        }
        return const Text('');
      },
    );
  }

  Widget cardTask(String note, int i) {
    dynamic notDone = _boolList[i];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SizedBox(
        child: ListTile(
          tileColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          leading: IconButton(
            icon: Icon(notDone ? Icons.check_box : Icons.crop_square_outlined
            ),
            color: notDone ? Colors.grey[100] : Colors.grey[500],
            onPressed: () {
              setState(() {
                if (notDone) {
                  String s = _note[i];
                  _note.remove(_note[i]);
                  _note.insert(0, s);
                  _boolList.remove(_boolList[i]);
                  _boolList.insert(0, false);
                  // _boolList[i] = false;
                }
                else {
                  int j = i + 1;
                  while (j < _note.length && _boolList[j] == false) {
                    j++;
                  }
                  // print(j);
                  String s = _note[i];
                  _note.remove(_note[i]);
                  _note.insert(j - 1, s);
                  _boolList.remove(_boolList[i]);
                  _boolList.insert(j - 1, true);
                  // _boolList[j-1] = true;
                }
              });
            },
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
            child: Text(note,
              maxLines: 4,
              overflow: TextOverflow.fade,
              style: TextStyle(
                decoration: notDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                color: notDone ? Colors.grey[300] : Colors.black,
              ),),
          ),

          onTap: () {
            _controller.text = _note[i];
           // int x = _removedNote.length;
            _showEditDialog(i);
            // _navigateEdit(note, i);
          },
        ),
      ),
    );
  }
  //
  // editTask(int i)  {
  //   setState(()  {
  //     note_string = _controller.text;
  //     if(note_string == '')
  //     {
  //       print('error');
  //     }
  //     else
  //     {
  //       _note[i] = note_string;
  //     }
  //   });
  // }

  Future<void> _showEditDialog(int i) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content:  SizedBox(
            width: 700,
            child: TextField(
              selectionWidthStyle: BoxWidthStyle.max,
              maxLines: null,
              //keyboardType: TextInputType.text,
              textInputAction: TextInputAction.newline,
              cursorColor: Colors.amber,
              controller: _controller,
              decoration: const InputDecoration(
                  hintText: ''
              ),
            ),
          ),
          actions: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        PopupMenuButton(
                            icon: const Icon(Icons.more_vert),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: const Text('delete'),
                                onTap: (){
                                  setState(()  {
                                    _submit();
                                    boolRemove =1;
                                    noteString = _note[i];
                                    _note.remove(_note[i]);
                                    boolRemove = 1;
                                    //  print(boolRemove);
                                    // popupMessage(note_string);
                                  });
                                },
                              ),
                            ]),
                      ]),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.color_lens)),
                const Expanded(
                    flex: 4,
                    child: SizedBox()),
                Expanded(
                  flex:1,
                  child: Row(
                    children: [TextButton(
                        onPressed: (){
                         // editTask(i);
                          setState(()  {
                            noteString = _controller.text;
                            if(noteString == '')
                            {
                              //print('error');
                            }
                            else
                            {
                              _note[i] = noteString;
                            }
                          });
                          _submit();
                        },
                        child: const Text('Done',
                          style: TextStyle(color: Colors.amber),))],
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }

  Future _submit() async {
    Navigator.of(context).pop(_controller.text);
    // buildNote();
  }

  Future addTask() async {
    setState(() {
      noteString = _controller.text;
      if (noteString == '') {
        //print('error');
      }
      else {
        _note.insert(0, noteString);
        _boolList.insert(0, false);
        bool = 1;
      }
    });
  }
  Future<void> _showMyDialog() async {
   // dynamic _nullOrNot = 0;
    //print(boolRemove);
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable:true ,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
          ),
          // ConstrainedBox(
          //   constraints: BoxConstraints(
          //       maxHeight: 100 //put here the max height to which you need to resize the textBox
          //   ),
          //   child: TextField(
          //     maxLines: null, ),
          // )

          content:  SizedBox(
            width: 700,
            // height: 1000,
            child: TextField(
              selectionWidthStyle: BoxWidthStyle.max,
              maxLines: null,
              //keyboardType: TextInputType.text,
              textInputAction: TextInputAction.newline,
              cursorColor: Colors.amber,
              controller: _controller,
              decoration: const InputDecoration(
                  hintText: 'Enter task description   '
              ),
            ),
          ),

          actions: <Widget>[
            TextButton(
                onPressed: (){
                  setState(() {
                    addTask();
                    _submit();
                  });
                },
                child: const Text('Done',
                  style: TextStyle(color:Colors.amber ,
                      fontWeight: FontWeight.bold), ))
          ],
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        //   title: const Text('To do List',
        // style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
        actions: [
          const Expanded(
              flex: 2,
              child: SizedBox()),
          Expanded(flex: 1,
            child: TextButton(
                onPressed: () {},
                child: const Text('Tasks', style: TextStyle(
                    color: Colors.amber, fontWeight: FontWeight.bold),)),
          ),
          Expanded(
            flex: 1,
            child: TextButton(onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const Note()));

                   // Navigator.pushReplacement(context,
                   //         MaterialPageRoute(builder: (context) => Note()));
                   // Navigator.canPop(context);
                          },


                child: const Text('Note', style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),)),
          ),
          const Expanded(
              flex: 2,
              child: SizedBox())

        ],
        backgroundColor: Colors.red, //Colors.grey[200]
        elevation: 0,),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          //initState_TextFiled();
          _controller.text = '';
          // _navigate();
           _showMyDialog();
        },
        child: const Icon(Icons.add),
      ),
      body: widgetBuildSuggestions(),
    );
  }

  //  void editTask(int i)  {
  //   setState(()  {
  //     note_string = _controller.text;
  //     if(note_string == '')
  //     {
  //       print('error');
  //     }
  //     else
  //     {
  //       _note[i] = note_string;
  //     }
  //   });
  // }
}