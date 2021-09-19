import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:todo_app/NoteCard/card_note.dart';
import 'package:todo_app/Task/task.dart';
class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {


     CardNote _cardNote = CardNote();
 //final _controller = TextEditingController();
  //final _title = TextEditingController();

  //int boolRemove = 0;
  //String note_string = ' ' ;

  //final _titleList = <String>[];


  //int bool = 0;
  Future _submit()async{
    Navigator.of(context).pop(_cardNote.controller.text);
  }
_delete(int i){
  setState(() {
    _cardNote.allNotes.remove(_cardNote.allNotes[i]);
    _submit();
  });
}
  //String _noteAfterEdit = '';
  void _navigateEdit(String s, int i){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context)
        {
          return Scaffold(
            backgroundColor: Colors.white,
              appBar: AppBar(
                elevation: 0,
                  iconTheme: IconThemeData(color: Colors.amber),
                  backgroundColor: Colors.white,
                  actions: [
                  // showDialog<void>(
                  // context: context,
                  // barrierDismissible: false, // user must tap button!
                  // builder: (BuildContext context) {
                  //   return AlertDialog(
                  //       scrollable:true ,);
                    IconButton(
                      icon: Icon(Icons.color_lens),
                      onPressed: (){
                        showDialog<void>(context: context,
                            builder: (BuildContext context){
                                  return Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: AlertDialog(
                                      title: Text('Note color'),
                                      content:  Padding(
                                        padding: const EdgeInsets.fromLTRB(0,0,0,15),
                                        child: SizedBox(
                                          height: 138,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){},
                                                        icon: Icon(Icons.circle,
                                                          size: 50,
                                                        color: Colors.white,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){},
                                                        icon: Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.redAccent,)),
                                                  ),
                                                   Expanded(
                                                     flex: 1,
                                                    child: IconButton(onPressed: (){},
                                                        icon: Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.yellowAccent,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){},
                                                        icon: Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.amberAccent,)),
                                                  ),
                                                  // IconButton(onPressed: (){},
                                                  //     icon: Icon(Icons.circle,
                                                  //       color: Colors.amberAccent,)),
                                                ],

                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){},
                                                          icon: Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.blueAccent,)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){},
                                                          icon: Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.blue[100],)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){},
                                                          icon: Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.green[300],)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){},
                                                          icon: Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.lightGreenAccent,)),
                                                    ),
                                                    // IconButton(onPressed: (){},
                                                    //     icon: Icon(Icons.circle,
                                                    //       color: Colors.amberAccent,)),
                                                  ],

                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){},
                                                        icon: Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.purpleAccent,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){},
                                                        icon: Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.pinkAccent,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){},
                                                        icon: Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.brown[200],)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){},
                                                        icon: Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.grey[200],)),
                                                  ),
                                                  // IconButton(onPressed: (){},
                                                  //     icon: Icon(Icons.circle,
                                                  //       color: Colors.amberAccent,)),
                                                ],

                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                            }
                        );
                      },
                    ),
                    IconButton(
                      onPressed: ()async{
                     // await  editNotes(i);
                    // editNotes(i);
                    //_noteAfterEdit = _controller.text;
                     s = _cardNote.controller.text;
                        _submit();
                      }, icon: Icon(Icons.check),),
                    PopupMenuButton(
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text('Delete',
                            ),
                            onTap: (){
                              _delete(i);
                            },
                          ),
                        ]
                    ),
                  ]
              ),
              body: Column(
                children: [
                  TextField(
                    selectionWidthStyle: BoxWidthStyle.max,
                    maxLines: null,
                    //keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.newline,
                    controller: _cardNote.title,
                    decoration: InputDecoration(
                      hintText: 'Title',
                    ),
                  ),
                  TextField(
                    selectionWidthStyle: BoxWidthStyle.max,
                    maxLines: null,
                    //keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.newline,
                    controller: _cardNote.controller,
                    decoration: InputDecoration(
                      hintText: 'Enter task description',
                    ),
                  ),
                ],
              )
          );
        }
    ))
        .then((valueFromTextField){
      //return buidlist(valueFromTextField);
     // print(valueFromTextField);
      String notevalue = valueFromTextField;
      setState(() {
        _cardNote.allNotes[i] = notevalue;
        _cardNote.titleList[i] = _cardNote.title.text;
      });
    //  print(_allNotes[i]);
      print(i);
    });
  }
  @override
  void _navigate(){
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context)
    {
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.amber),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: (){
                _submit();
               // _submit();
                //Notes();
              }, icon: Icon(Icons.check),)
          ]
        ),
        body: Column(
          children: [
            TextField(
              cursorColor: Colors.amber,
              controller: _cardNote.title,
              selectionWidthStyle: BoxWidthStyle.max,
              maxLines: null,
              //keyboardType: TextInputType.text,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                  hintText: 'Title'
              ),
            ),
            TextField(
                    cursorColor: Colors.amber,
                    controller: _cardNote.controller,
              selectionWidthStyle: BoxWidthStyle.max,
              maxLines: null,
              //keyboardType: TextInputType.text,
              textInputAction: TextInputAction.newline,
                    decoration: InputDecoration(
                      hintText: 'Note'
                    ),
                  ),
          ],
        ),
      );
    }
    ))
        .then((valueFromTextField){
          setState(() {
            _cardNote.allNotes.insert(0, valueFromTextField);
            _cardNote.titleList.insert(0,_cardNote.title.text);
          });
    });
  }
  @override
  Widget myWidget() {
   return  ListView.builder(
      itemBuilder: (contex, i){
        if( _cardNote.allNotes.length == 0)
        {
          return Text('');
        }
        else if(i <  _cardNote.allNotes.length) {
          return CardNotes( _cardNote.allNotes[i] ,i);
        }
        return Text('');
      },
    );
    }

  @override
  Widget CardNotes(String s, int i){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: (){
          _cardNote.controller.text =  _cardNote.allNotes[i];
          _cardNote.title.text = _cardNote.titleList[i];
          _navigateEdit( _cardNote.allNotes[i], i);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: Colors.white,
       // title: Text(s),
        title: _cardNote.titleList[i] != ''? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_cardNote.titleList[i],
              overflow: TextOverflow.fade,
              maxLines: 4,
              style: TextStyle(
              fontWeight: FontWeight.bold
            ),
            ),
            Text(s,
              overflow: TextOverflow.fade,
              maxLines: 4,)
          ],
        ):Text(s),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        actions: [
          Expanded( flex : 2,child: SizedBox()),
          Expanded( flex:1,
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Task()));
             // _submit();
            },
                child: Text('Tasks',
                  overflow: TextOverflow.fade,
                  style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.bold),)),
          ),
          Expanded( flex:1,
            child: TextButton(onPressed: (){
              //_navigate();
            }, child: Text('Notes', overflow: TextOverflow.fade,style:
            TextStyle(color: Colors.amber,
                fontWeight: FontWeight.bold),)),
          ),
          Expanded(flex :2,child: SizedBox())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: (){
          _cardNote.controller.text = '';
          _cardNote.title.text = '';
            _navigate();
        },
        child: const Icon(Icons.add),
      ),
       body:myWidget(),
    );
  }
}
