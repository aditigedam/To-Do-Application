import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'Task/task.dart';
//
// import 'Home/home.dart';
 import 'Note/note.dart';
// import 'Task/task.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
    home: MyApp()
  ));
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return GetText();
  }
}
        class GetText extends StatefulWidget {
          const GetText({Key? key}) : super(key: key);

          @override
          _GetTextState createState() => _GetTextState();
        }

        class _GetTextState extends State<GetText> {
          final _controller = TextEditingController();
          final _title = TextEditingController();
          // final Function onchanged;
          //   FocusNode _focusNode;
          int boolRemove = 0;
          String note_string = ' ' ;
          final _note = <String>[];
          final _titleList = <String>[];
          final _boolList = <dynamic>[];
          final _removedNote = <String>[];
          final _colorTask = <Color>[];
          final _colorNote = <Color>[];
          final _allNotes = <String>[];
          //final _list = <String>{};
          int bool = 0;
          Future _submit()async{
            Navigator.of(context).pop(_controller.text);
           // buildNote();
          }

          // Widget buildNote(){
          //           // return Cont
          // }
          String _noteAfterEdit = '';
          void _navigateEdit(String s, int i){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)
                {
                  return Scaffold(
                    backgroundColor: Colors.white,
                      appBar: AppBar(
                          iconTheme: IconThemeData(color: Colors.amber),
                          backgroundColor: _colorNote[i],
                          actions: [
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
                                                        child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorNote[i] = Colors.white;
                                                          });
                                                        },
                                                            icon: Icon(Icons.circle,
                                                              size: 50,
                                                              color: Colors.white,)),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorNote[i] = Colors.redAccent;
                                                          });
                                                        },
                                                            icon: Icon(Icons.circle,
                                                              size: 50,
                                                              color: Colors.redAccent,)),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorNote[i] = Colors.yellowAccent;
                                                          });
                                                        },
                                                            icon: Icon(Icons.circle,
                                                              size: 50,
                                                              color: Colors.yellowAccent,)),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorNote[i] = Colors.amberAccent;
                                                          });
                                                        },
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
                                                          child: IconButton(onPressed: (){
                                                            setState(() {
                                                              _colorNote[i] = Colors.blueAccent;
                                                            });
                                                          },
                                                              icon: Icon(Icons.circle,
                                                                size: 50,
                                                                color: Colors.blueAccent,)),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(onPressed: (){
                                                            setState(() {
                                                              _colorNote[i] = Colors.lightBlueAccent;
                                                            });
                                                          },
                                                              icon: Icon(Icons.circle,
                                                                size: 50,
                                                                color: Colors.lightBlueAccent,)),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(onPressed: (){
                                                            setState(() {
                                                              _colorNote[i] = Colors.greenAccent;
                                                            });
                                                          },
                                                              icon: Icon(Icons.circle,
                                                                size: 50,
                                                                color: Colors.greenAccent,)),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(onPressed: (){
                                                            setState(() {
                                                              _colorNote[i] = Colors.lightGreenAccent;
                                                            });
                                                          },
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
                                                        child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorNote[i] = Colors.purpleAccent;
                                                          });
                                                        },
                                                            icon: Icon(Icons.circle,
                                                              size: 50,
                                                              color: Colors.purpleAccent,)),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorNote[i] = Colors.pinkAccent;
                                                          });
                                                        },
                                                            icon: Icon(Icons.circle,
                                                              size: 50,
                                                              color: Colors.pinkAccent,)),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorNote[i] = Colors.brown;
                                                          });
                                                        },
                                                            icon: Icon(Icons.circle,
                                                              size: 50,
                                                              color: Colors.brown,)),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorNote[i] = Colors.grey;
                                                          });
                                                        },
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
                             editNotes(i);
                            _noteAfterEdit = _controller.text;
                             s = _controller.text;
                                _submit();
                               _submit();
                                _Notes();
                              }, icon: Icon(Icons.check),),
                            PopupMenuButton(
                                icon: Icon(Icons.more_vert),
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text('Delete',
                                    ),
                                    onTap: ()async{
                                    //_delete(i);
                                   // _submit();
                                      setState(() async{
                                        _submit();
                                      _submit();
                                      _allNotes.remove(_allNotes[i]);
                                      _titleList.remove(_titleList[i]);
                                    //  _submit();
                                      });
                                        //  print(boolRemove);
                                        // popupMessage(note_string);
                                      }
                                  ),
                                ]
                            ),
                          ]
                      ),
                      body: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextField(
                              selectionWidthStyle: BoxWidthStyle.max,
                              maxLines: null,
                              //keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.newline,
                              controller: _title,
                              decoration: InputDecoration(
                                hintText: 'Title',
                              ),
                            ),
                            TextField(
                              selectionWidthStyle: BoxWidthStyle.max,
                              maxLines: null,
                              //keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.newline,
                              controller: _controller,
                              decoration: InputDecoration(
                                hintText: 'Enter task description',
                              ),
                            ),
                          ],
                        ),
                      )
                  );
                }
            ))
                .then((valueFromTextField){
              //return buidlist(valueFromTextField);
             // print(valueFromTextField);
              String notevalue = valueFromTextField;
              setState(() {
                _allNotes[i] = notevalue;
                _titleList[i] = _title.text;
              });
            //  print(_allNotes[i]);
              print(i);
            });
          }

          _delete(int i){
            setState(() {
              _allNotes.remove(_allNotes[i]);
              _titleList.remove(_titleList[i]);
              _submit();
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
                  title: Text('task'),
                        iconTheme: IconThemeData(color: Colors.amber),
                  backgroundColor: Colors.white,
                  actions: [
                    IconButton(
                      onPressed: (){
                        _submit();
                        _submit();
                         _Notes();
                      }, icon: Icon(Icons.check),)
                  ]
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        TextField(
                          cursorColor: Colors.amber,
                          controller: _title,
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
                                controller: _controller,
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
                  ),
                ),
              );
            }
            ))
                .then((valueFromTextField){
                  //return buidlist(valueFromTextField);
                  //print(valueFromTextField);
                  setState(() {
                   // note_string = valueFromTextField;
                    if(valueFromTextField != '')
                      {
                        _allNotes.insert(0, valueFromTextField);
                        _titleList.insert(0,_title.text);
                        _colorNote.insert(0,Colors.white);
                        _title.text = '';
                      }
                    else{
                               print('empty()');
                    }
                   // _boolList.insert(0,false);
                    //bool = 1;
                  });
              // use your valueFromTextField from the second page
            });
          }

          @override
          void change_Icon(Icon icon){
            setState(() {
             icon = Icon(Icons.check_box);
            });
          }
          @override

          Widget Card(String note , int i)  {
             dynamic _Not_done =  _boolList[i];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: SizedBox(
                child: ListTile(
                  tileColor: _colorTask[i],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  leading: IconButton(
                    icon: Icon(_Not_done?  Icons.check_box: Icons.crop_square_outlined
                    ),
                    color: _Not_done?Colors.grey[100]:Colors.grey[500],
                    onPressed: (){
                           setState(() {
                                  if(_Not_done)
                                    {
                                      String s =_note[i];
                                      _note.remove(_note[i]);
                                      _note.insert(0, s);
                                      _boolList.remove(_boolList[i]);
                                      _boolList.insert(0,false);
                                     // _boolList[i] = false;
                                    }
                                  else
                                    {
                                       // _removedNote.add(note);

                                      // _boolList.remove(_boolList[i]);
                                      // _boolList.insert(_boolList.length-1, true);
                                      int j = i+1;
                                      while(j<_note.length && _boolList[j] == false)
                                        {
                                          j++;
                                        }
                                       // print(j);
                                      String s = _note[i];
                                      _note.remove(_note[i]);
                                      _note.insert(j-1, s);
                                      _boolList.remove(_boolList[i]);
                                      _boolList.insert(j-1, true);
                                     // _boolList[j-1] = true;
                                    }
                           });
                    },
                  ),
                  title: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                    child: Text(note,
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                    style:TextStyle(
                        decoration: _Not_done?TextDecoration.lineThrough: TextDecoration.none,
                        color: _Not_done?Colors.grey[300] :Colors.black,
                    ) ,),
                  ),

                  onTap: (){
                    _controller.text = _note[i];
                    int x = _removedNote.length;
                    _showEditDialog(i);
                   // _navigateEdit(note, i);
                  },
                ),
              ),
            );
          }


          @override
          Widge_buildSuggestions() {
            return ListView.builder(
                itemBuilder: (contex, i){
                             if(_note.length == 0)
                               {
                                 return Text('');
                               }
                             else if(i < _note.length) {
                               return Card(_note[i] ,i);
                             }
                             return Text('');
                  },
                 );
                }
          @override
            Widget myWidget() {
           return  ListView.builder(
              itemBuilder: (contex, i){
                if(_allNotes.length == 0)
                {
                  return Text('');
                }
                else if(i < _allNotes.length) {
                  return CardNotes(_allNotes[i] ,i);
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
                  _controller.text = _allNotes[i];
                     _title.text =  _titleList[i] ;
                   _navigateEdit(_allNotes[i], i);
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               tileColor: _colorNote[i],
                //overflow: TextOverflow.fade,
               // title: Text(_allNotes[i]),
                title: _titleList[i] != ''? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_titleList[i],style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(s)
                  ],
                ):Text(s),
              ),
            );
         }
          @override
          void dispose() {
            // Clean up the controller when the widget is disposed.
            _controller.dispose();
            super.dispose();
          }
          // void initState() {
          //   super.initState();
          //   _focusNode = FocusNode();
          //   _focusNode.addListener(() {
          //     if (_focusNode.hasFocus) {
          //       setState(() {
          //         s = _controller.text;
          //       });
          //       _controller.clear();
          //     }
          //   });
          // }

          // Widget buidlist(BuildContext context){
          //
          // }
          Future<void> _showMyDialog() async {
            dynamic _nullOrNot = 0;
            print(boolRemove);
            return showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  scrollable:true ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                  ),
                    // ConstrainedBox(
                    //   constraints: BoxConstraints(
                    //       maxHeight: 100 //put here the max height to which you need to resize the textbox
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
                        decoration: InputDecoration(
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
                          child: Text('Done',
                      style: TextStyle(color:Colors.amber ,
                           fontWeight: FontWeight.bold), ))
                  ],
                );
              },
            );
          }

          // Future setX() async {
          //   setState(() {
          //     note_string = _controller.text;
          //     if(note_string == '')
          //     {
          //
          //     }
          //     else
          //     {
          //
          //     }
          //   });
          // }
         void _Notes(){
           Navigator.of(context).push(MaterialPageRoute(
               builder: (BuildContext context){
                 return Scaffold(
                   backgroundColor: _allNotes.length ==0 ? Colors.white:Colors.grey[200],
                   appBar: AppBar(
                     backgroundColor: Colors.white,
                     actions: [
                       Expanded( flex : 2,child: SizedBox()),
                       Expanded( flex:1,
                         child: TextButton(onPressed: (){
                          _submit();
                         },
                             child: Text('Tasks',
                               style: TextStyle(color: Colors.black,
                                   fontWeight: FontWeight.bold),)),
                       ),
                       Expanded( flex:1,
                         child: TextButton(onPressed: (){
                          // _navigate();
                         }, child: Text('Notes',style:
                         TextStyle(color: Colors.amber,
                             fontWeight: FontWeight.bold),)),
                       ),
                       Expanded(flex :2,child: SizedBox())
                     ],
                   ),
                   floatingActionButton: FloatingActionButton(
                     backgroundColor: Colors.amber,
                     onPressed: (){
                       //initState_TextFiled();
                       _controller.text = '';
                       _title.text = '';
                        _navigate();
                       //_showMyDialog();
                     },
                     child: const Icon(Icons.add),
                   ),
                   body:_allNotes.length == 0? Container(
                     child:  Center(child: Image.asset("Assets/notes.jpg")),
                   ):myWidget(),
                 );
           }));
         }


          Future addTask() async {
            setState(() {
              note_string = _controller.text;
              if(note_string == '')
                {
                  print('error');
                }
              else
                {
                  _note.insert(0,note_string);
                  _colorTask.insert(0,Colors.white);
                  _boolList.insert(0,false);
                   bool = 1;
                }
            });
          }

          //  editTask(int i)  {
          //   setState(()  {
          //      note_string = _controller.text;
          //      if(note_string == '')
          //      {
          //        print('error');
          //      }
          //      else
          //      {
          //        _note[i] = note_string;
          //      }
          //   });
          // }
          editNotes(int i)  {
            setState(()  {
              note_string = _controller.text;
              if(note_string == '')
              {
                print('error');
              }
              else
              {
                _allNotes[i] = note_string;
              }
            });
          }
          addNote(){
            setState(() {
              note_string = _controller.text;
              if(note_string == '')
              {
                print('error');
              }
              else
              {
                _allNotes.insert(0,note_string);
                //_boolList.insert(0,false);
               // bool = 1;
              }
            });
          }


          popupMessage(String s){
            _removedNote.insert(0, s);
          }

            // colorSet(int i){
            // Color s = _colorTask[i];
            // setState(() {
            //   s = _colorTask[i];
            // });
            // return s;
            // }

          Future<void> _showEditDialog(int i) async {
            return showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: _colorTask[i],
                  content:  SizedBox(
                    width: 700,
                    child: TextField(
                      selectionWidthStyle: BoxWidthStyle.max,
                      maxLines: null,
                      //keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.newline,
                      cursorColor: Colors.amber,
                      controller: _controller,
                      decoration: InputDecoration(
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
                                      icon: Icon(Icons.more_vert),
                                     itemBuilder: (context) => [
                                       PopupMenuItem(
                                         child: Text('delete'),
                                         onTap: (){
                                           setState(()  {
                                              _submit();
                                              boolRemove =1;
                                               note_string = _note[i];
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
                         IconButton(
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
                                                       child: IconButton(onPressed: (){
                                                         setState(() {
                                                           _colorTask[i] = Colors.white;
                                                         });
                                                       },
                                                           icon: Icon(Icons.circle,
                                                             size: 50,
                                                             color: Colors.white,)),
                                                     ),
                                                     Expanded(
                                                       flex: 1,
                                                       child: IconButton(onPressed: (){
                                                    setState(() {
                                                      _colorTask[i] = Colors.redAccent;
                                                    });
                                                       },
                                                           icon: Icon(Icons.circle,
                                                             size: 50,
                                                             color: Colors.redAccent,)),
                                                     ),
                                                     Expanded(
                                                       flex: 1,
                                                       child: IconButton(onPressed: (){
                                                         setState(() {
                                                           _colorTask[i] = Colors.yellowAccent;
                                                         });
                                                       },
                                                           icon: Icon(Icons.circle,
                                                             size: 50,
                                                             color: Colors.yellowAccent,)),
                                                     ),
                                                     Expanded(
                                                       flex: 1,
                                                       child: IconButton(onPressed: (){
                                                         setState(() {
                                                           _colorTask[i] = Colors.amberAccent;
                                                         });
                                                       },
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
                                                         child: IconButton(onPressed: (){
                                                           setState(() {
                                                             _colorTask[i] = Colors.blueAccent;
                                                           });
                                                         },
                                                             icon: Icon(Icons.circle,
                                                               size: 50,
                                                               color: Colors.blueAccent,)),
                                                       ),
                                                       Expanded(
                                                         flex: 1,
                                                         child: IconButton(onPressed: (){
                                                           setState(() {
                                                             _colorTask[i] = Colors.lightBlueAccent;
                                                           });
                                                         },
                                                             icon: Icon(Icons.circle,
                                                               size: 50,
                                                               color: Colors.lightBlueAccent,)),
                                                       ),
                                                       Expanded(
                                                         flex: 1,
                                                         child: IconButton(onPressed: (){
                                                           setState(() {
                                                             _colorTask[i] = Colors.greenAccent;
                                                           });
                                                         },
                                                             icon: Icon(Icons.circle,
                                                               size: 50,
                                                               color: Colors.greenAccent,)),
                                                       ),
                                                       Expanded(
                                                         flex: 1,
                                                         child: IconButton(onPressed: (){
                                                           setState(() {
                                                             _colorTask[i] = Colors.lightGreenAccent;
                                                           });
                                                         },
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
                                                       child: IconButton(onPressed: (){
                                                         setState(() {
                                                           _colorTask[i] = Colors.purpleAccent;
                                                         });
                                                       },
                                                           icon: Icon(Icons.circle,
                                                             size: 50,
                                                             color: Colors.purpleAccent,)),
                                                     ),
                                                     Expanded(
                                                       flex: 1,
                                                       child: IconButton(onPressed: (){
                                                         setState(() {
                                                           _colorTask[i] = Colors.pinkAccent;
                                                         });
                                                       },
                                                           icon: Icon(Icons.circle,
                                                             size: 50,
                                                             color: Colors.pinkAccent,)),
                                                     ),
                                                     Expanded(
                                                       flex: 1,
                                                       child: IconButton(onPressed: (){
                                                         setState(() {
                                                           _colorTask[i] = Colors.brown;
                                                         });
                                                       },
                                                           icon: Icon(Icons.circle,
                                                             size: 50,
                                                             color: Colors.brown ,)),
                                                     ),
                                                     Expanded(
                                                       flex: 1,
                                                       child: IconButton(onPressed: (){
                                                         setState(() {
                                                           _colorTask[i] = Colors.grey;
                                                         });
                                                       },
                                                           icon: Icon(Icons.circle,
                                                             size: 50,
                                                             color: Colors.grey,)),
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
                             icon: Icon(Icons.color_lens)),
                         Expanded(
                           flex: 4,
                             child: SizedBox()),
                         Expanded(
                           flex:1,
                           child: Row(
                             children: [TextButton(
                                onPressed: (){
                                  editTask(i);
                                  _submit();
                                },
                                child: Text('Done',
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
          void editTask(int i)  {
            setState(()  {
              note_string = _controller.text;
              if(note_string == '')
              {
                print('error');
              }
              else
              {
                _note[i] = note_string;
              }
            });
          }

          @override
          Widget build(BuildContext context) {
            Container(
              child: TextField(
                controller: _controller,
               // maxLines: 10,

                decoration: InputDecoration(
                  hintText: 'Enter a Task what you want to right                    ',
                ),
              ),
            );

            return Scaffold(
              backgroundColor: _note.length ==0 ?Colors.white: Colors.grey[200],
              appBar: AppBar(
              //   title: const Text('To do List',
              // style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                actions: [
                  Expanded(
                    flex: 2,
                      child: SizedBox()),
                      Expanded( flex: 1,
                        child: TextButton(
                            onPressed: (){
                        },
                            child: Text('Tasks',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                      ),
                  Expanded(
                    flex: 1,
                    child: TextButton(onPressed: (){
                      _Notes();
                    },
                        child: Text('Note',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                  Expanded(
                    flex: 2,
                      child: SizedBox())

                ],
              backgroundColor: Colors.white,//Colors.grey[200]
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: (){
                  //initState_TextFiled();
                  _controller.text = '';
                  _title.text = '';
                  // _navigate();
                  _showMyDialog();
                },
                   child: const Icon(Icons.add),
              ),
             // body:  Widge_buildSuggestions(),
              body :_note.length == 0 ?Container(
                child: Center(child: Image.asset("Assets/tasks.jpg")),)
              :Widge_buildSuggestions()
            );
          }
        }



//
//
//
//
