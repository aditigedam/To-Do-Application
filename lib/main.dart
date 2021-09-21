import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
    home: MyApp()
  ));
}

// hI ALL ok 11111111111111111111111111111111111111111111111111111111

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const GetText();
    // return Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(30.0),
    //     child: Column(
    //     children: [
    //       TextButton(onPressed: (){
    //             // Navigator.of(context).push(MaterialPageRoute(
    //             //   builder: (BuildContext context)
    //             //  {
    //             //     },
    //          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
    //            return Task();
    //          }));
    //              },
    //         child: Text('Task')),
    //        TextButton(onPressed: (){
    //          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
    //            return Note();
    //          }));
    //        }, child: Text('Notes'))
    //     ],
    //     ),
    //   ),
    // );
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
          // final Function onChanged;
          //   FocusNode _focusNode;
          int boolRemove = 0;
          String noteString = ' ' ;
          final _note = <String>[];
          final _titleList = <String>[];
          final _boolList = <dynamic>[];
          dynamic isRemovedNote = 0;
       //   final _removedNote = <String>[];
          final _colorTask = <Color>[];
          final _colorNote = <Color>[];
          final _allNotes = <String>[];
          dynamic colorBox = Colors.white;
          dynamic colorNote = Colors.white ;
          //final _list = <String>{};
          int bool = 0;
          Future _submit()async{
            Navigator.of(context).pop(_controller.text);
           // buildNote();
          }

          Future<void> _navigateEdit(String s, int i)async{
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)
                {
                  return Scaffold(
                      backgroundColor: Colors.white,
                      appBar: AppBar(
                          iconTheme: const IconThemeData(color: Colors.amber),
                          backgroundColor: Colors.white,
                          actions: [
                            // showDialog<void>(
                            // context: context,
                            // barrierDismissible: false, // user must tap button!
                            // builder: (BuildContext context) {
                            //   return AlertDialog(
                            //       scrollable:true ,);
                            IconButton(
                              icon: const Icon(Icons.color_lens),
                              onPressed: (){
                                showDialog<void>(context: context,
                                    builder: (BuildContext context){
                                      return Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: AlertDialog(
                                          title: const Text('Note color'),
                                          backgroundColor: Colors.grey[100],
                                          content:  Padding(
                                            padding: const EdgeInsets.fromLTRB(0,0,0,15),
                                            child: SizedBox(
                                              height: 138,
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                    flex :1,
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(onPressed: (){
                                                            setState(() {
                                                              _colorNote.insert(0,Colors.white);
                                                            });
                                                          },
                                                              icon: const Icon(Icons.circle,
                                                                size: 50,
                                                                color: Colors.white,)),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(onPressed: (){
                                                            setState(() {
                                                              _colorNote.insert(0,Colors.redAccent);
                                                            });
                                                          },
                                                              icon: const Icon(Icons.circle,
                                                                size: 50,
                                                                color: Colors.redAccent,)),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(onPressed: (){
                                                            setState(() {
                                                              _colorNote.insert(0,Colors.yellowAccent);
                                                            });
                                                          },
                                                              icon: const Icon(Icons.circle,
                                                                size: 50,
                                                                color: Colors.yellowAccent,)),
                                                        ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: IconButton(onPressed: (){
                                                            setState(() {
                                                              _colorNote.insert(0,Colors.amberAccent);
                                                            });
                                                          },
                                                              icon: const Icon(Icons.circle,
                                                                size: 50,
                                                                color: Colors.amberAccent,)),
                                                        ),
                                                        // IconButton(onPressed: (){},
                                                        //     icon: Icon(Icons.circle,
                                                        //       color: Colors.amberAccent,)),
                                                      ],

                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Padding(
                                                      padding: const EdgeInsets.fromLTRB(8,4,8,4),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: IconButton(onPressed: (){
                                                              setState(() {
                                                                _colorNote.insert(0,Colors.blueAccent);
                                                              });
                                                            },
                                                                icon: const Icon(Icons.circle,
                                                                  size: 50,
                                                                  color: Colors.blueAccent,)),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: IconButton(onPressed: (){
                                                              setState(() {
                                                                _colorNote.insert(0,Colors.blue);
                                                              });
                                                            },
                                                                icon: const Icon(Icons.circle,
                                                                  size: 50,
                                                                  color: Colors.blue ,)),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: IconButton(onPressed: (){
                                                              setState(() {
                                                                _colorNote.insert(0,Colors.green);
                                                              });
                                                            },
                                                                icon: const Icon(Icons.circle,
                                                                  size: 50,
                                                                  color: Colors.green ,)),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: IconButton(onPressed: (){
                                                              setState(() {
                                                                _colorNote.insert(0,Colors.lightGreenAccent);
                                                              });
                                                            },
                                                                icon: const Icon(Icons.circle,
                                                                  size: 50,
                                                                  color: Colors.lightGreenAccent,)),
                                                          ),
                                                          // IconButton(onPressed: (){},
                                                          //     icon: Icon(Icons.circle,
                                                          //       color: Colors.amberAccent,)),
                                                        ],

                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: IconButton(onPressed: (){
                                                              setState(() {
                                                                _colorNote.insert(0,Colors.purpleAccent);
                                                              });
                                                            },
                                                                icon: const Icon(Icons.circle,
                                                                  size: 50,
                                                                  color: Colors.purpleAccent,)),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: IconButton(onPressed: (){
                                                              setState(() {
                                                                _colorNote.insert(0,Colors.pinkAccent);
                                                              });
                                                            },
                                                                icon: const Icon(Icons.circle,
                                                                  size: 50,
                                                                  color: Colors.pinkAccent,)),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: IconButton(onPressed: (){
                                                              setState(() {
                                                                _colorNote.insert(0,Colors.brown);
                                                              });
                                                            },
                                                                icon: const Icon(Icons.circle,
                                                                  size: 50,
                                                                  color: Colors.brown,)),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: IconButton(onPressed: (){
                                                              setState(() {
                                                                _colorNote.insert(0,Colors.grey);
                                                              });
                                                            },
                                                                icon: const Icon(Icons.circle,
                                                                  size: 50,
                                                                  color: Colors.grey ,)),
                                                          ),
                                                          // IconButton(onPressed: (){},
                                                          //     icon: Icon(Icons.circle,
                                                          //       color: Colors.amberAccent,)),
                                                        ],

                                                      ),
                                                    ),
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

                            //     // await  editNotes(i);
                            //     //_noteAfterEdit = _controller.text;
                            // setState(() {
                               editNotes(i);
                            //   s = _controller.text;
                              _submit();
                              _submit();
                               notesScreen();
                          //  });
                              }, icon: const Icon(Icons.check),),
                            PopupMenuButton(
                                icon: const Icon(Icons.more_vert),
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: const Text('Delete',
                                    ),
                                    onTap: (){
                                      _delete(i);
                                      setState(() {
                                      });

                                    },
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
                              decoration: const InputDecoration(
                                hintText: 'Title',
                              ),
                            ),
                            TextField(
                              selectionWidthStyle: BoxWidthStyle.max,
                              maxLines: null,
                              //keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.newline,
                              controller: _controller,
                              decoration: const InputDecoration(
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
              //return buildList(valueFromTextField);
              // print(valueFromTextField);
              // print('is removed is');
              // print(isRemovedNote);
              String noteValue = valueFromTextField;
              setState(() {
                _allNotes[i] = noteValue;
                _titleList[i] = _title.text;
              });
              //  print(_allNotes[i]);
            });
          }



          _delete(int i){
           // String x = _allNotes[i];
            setState(() {
              //print(_titleList[i]);
              _allNotes.remove(_allNotes[i]);
              _titleList.remove(_titleList[i]);
              _colorNote.remove(_colorNote[i]);
              //_navigateEdit(x, i);
              isRemovedNote = 1;
              _submit();
            });
          }
         int i=0;
          void _navigate(){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context)
            {
              return Scaffold(
                backgroundColor:Colors.white,
                appBar: AppBar(
                  title: const Text('task'),
                        iconTheme: const IconThemeData(color: Colors.amber),
                  backgroundColor: Colors.white,
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.color_lens),
                      onPressed: (){
                        showDialog<void>(context: context,
                            builder: (BuildContext context){
                              return Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: AlertDialog(
                                  backgroundColor: Colors.grey[100],
                                  title: const Text('Note color'),
                                  content:  Padding(
                                    padding: const EdgeInsets.fromLTRB(0,0,0,15),
                                    child: SizedBox(
                                      height: 138,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex :1,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: IconButton(onPressed: (){
                                                    setState(() {
                                                    colorNote = Colors.white;
                                                    });
                                                  },
                                                      icon: const Icon(Icons.circle,
                                                        size: 50,
                                                        color: Colors.white,)),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: IconButton(onPressed: (){
                                                    setState(() {
                                                      colorNote = Colors.redAccent;
                                                    });
                                                  },
                                                      icon: const Icon(Icons.circle,
                                                        size: 50,
                                                        color: Colors.redAccent,)),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: IconButton(onPressed: (){
                                                    setState(() {
                                                      colorNote = Colors.yellowAccent;
                                                    });
                                                  },
                                                      icon: const Icon(Icons.circle,
                                                        size: 50,
                                                        color: Colors.yellowAccent,)),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: IconButton(onPressed: (){
                                                    setState(() {
                                                      colorNote = Colors.amberAccent;
                                                    });
                                                  },
                                                      icon: const Icon(Icons.circle,
                                                        size: 50,
                                                        color: Colors.amberAccent,)),
                                                ),
                                                // IconButton(onPressed: (){},
                                                //     icon: Icon(Icons.circle,
                                                //       color: Colors.amberAccent,)),
                                              ],

                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(8,4,8,4),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorNote = Colors.blueAccent;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.blueAccent,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorNote = Colors.blue;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.blue ,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorNote = Colors.green;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.green ,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorNote = Colors.lightGreenAccent;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.lightGreenAccent,)),
                                                  ),
                                                  // IconButton(onPressed: (){},
                                                  //     icon: Icon(Icons.circle,
                                                  //       color: Colors.amberAccent,)),
                                                ],

                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorNote = Colors.purpleAccent;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.purpleAccent,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorNote = Colors.pinkAccent;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.pinkAccent,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorNote = Colors.brown;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.brown,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorNote = Colors.grey;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.grey ,)),
                                                  ),
                                                  // IconButton(onPressed: (){},
                                                  //     icon: Icon(Icons.circle,
                                                  //       color: Colors.amberAccent,)),
                                                ],

                                              ),
                                            ),
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
                      onPressed: (){
                        _submit();
                        _submit();
                        notesScreen();
                      }, icon: const Icon(Icons.check),)
                  ]
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        cursorColor: Colors.amber,
                        controller: _title,
                        selectionWidthStyle: BoxWidthStyle.max,
                        maxLines: null,
                        //keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.newline,
                        decoration: const InputDecoration(
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
                              decoration: const InputDecoration(
                                hintText: 'Note'
                              ),
                            ),
                    ],
                  ),
                ),
              );
            }
            ))
                .then((valueFromTextField){
                  //return buildList(valueFromTextField);
                  //print(valueFromTextField);
                  setState(() {
                   // note_string = valueFromTextField;
                    if(valueFromTextField != '' || _title.text != '')
                      {
                        _allNotes.insert(0, valueFromTextField);
                        _titleList.insert(0,_title.text);
                        _colorNote.insert(0,colorNote);
                        _title.text = '';
                      }
                    else{
                            //   print('empty()');
                    }
                   // _boolList.insert(0,false);
                    //bool = 1;
                  });
              // use your valueFromTextField from the second page
            });
          }

          // void changeIcon(Icon icon){
          //   setState(() {
          //    icon = Icon(Icons.check_box);
          //   });
          // }
          Widget cardTask(String note , int i)  {
             dynamic notDone =  _boolList[i];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: SizedBox(
                child: ListTile(
                  tileColor: _colorTask[i],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  leading: IconButton(
                    icon: Icon(notDone?  Icons.check_box: Icons.crop_square_outlined
                    ),
                    color: notDone?Colors.grey[100]:Colors.grey[500],
                    onPressed: (){
                           setState(() {
                                  if(notDone)
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
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                    child: Text(note,
                    maxLines: 4,
                    overflow: TextOverflow.fade,
                    style:TextStyle(
                        decoration: notDone?TextDecoration.lineThrough: TextDecoration.none,
                        color: notDone?Colors.grey[300] :Colors.black,
                    ) ,),
                  ),

                  onTap: (){
                    _controller.text = _note[i];
                   // int x = _removedNote.length;
                    _showEditDialog(i);
                   // _navigateEdit(note, i);
                  },
                ),
              ),
            );
          }


          widgetBuildSuggestions() {
            return ListView.builder(
                itemBuilder: (context, i){
                             if(_note.isEmpty)
                               {
                                 return const Text('');
                               }
                             else if(i < _note.length) {
                               return cardTask(_note[i] ,i);
                             }
                             return const Text('');
                  },
                 );
                }
          Widget myWidget() {
           return  ListView.builder(
              itemBuilder: (context, i){
                if(_allNotes.isEmpty)
                {
                  return const Text('');
                }
                else if(i < _allNotes.length) {
                  return cardNotes(_allNotes[i] ,i);
                }
                return const Text('');
              },
            );
            }
          Widget cardNotes(String s, int i){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){
                  _controller.text = _allNotes[i];
                     _title.text =  _titleList[i] ;
                  _navigateEdit(_allNotes[i], i);
                   setState(() {
                   });
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                tileColor: _colorNote[i],
                //overflow: TextOverflow.fade,
               // title: Text(_allNotes[i]),
                title: _titleList[i] != ''? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_titleList[i],style: const TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(_allNotes[i])
                  ],
                ):Text(_allNotes[i]),
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

          // Widget buildList(BuildContext context){
          //
          // }
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
                    IconButton(
                        onPressed: (){
                          showDialog<void>(context: context,
                              builder: (BuildContext context){
                                return Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: AlertDialog(
                                    backgroundColor: Colors.grey[100],
                                    title: const Text('Note color'),
                                    content:  Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,15),
                                      child: SizedBox(
                                        height: 138,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child:
                                                    IconButton(onPressed: (){
                                                      setState(() {
                                                        colorBox = Colors.white;
                                                      });

                                                    },
                                                      icon:
                                                      const Icon(Icons.circle,
                                                        color: Colors.white,
                                                        size: 50,
                                                        //color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorBox = Colors.redAccent;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.redAccent,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorBox = Colors.yellowAccent;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.yellowAccent,)),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(onPressed: (){
                                                      setState(() {
                                                        colorBox = Colors.amberAccent;
                                                      });
                                                    },
                                                        icon: const Icon(Icons.circle,
                                                          size: 50,
                                                          color: Colors.amberAccent,)),
                                                  ),
                                                  // IconButton(onPressed: (){},
                                                  //     icon: Icon(Icons.circle,
                                                  //       color: Colors.amberAccent,)),
                                                ],

                                              ),
                                            ),
                                            Expanded(
                                              flex:1,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(8,4,8,4),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){
                                                        setState(() {
                                                          colorBox = Colors.blueAccent;
                                                        });
                                                      },
                                                          icon: const Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.blueAccent,)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){
                                                        setState(() {
                                                          colorBox = Colors.lightBlueAccent;
                                                        });
                                                      },
                                                          icon: const Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.lightBlueAccent,)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){
                                                        setState(() {
                                                          colorBox = Colors.greenAccent;
                                                        });
                                                      },
                                                          icon: const Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.greenAccent,)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){
                                                        setState(() {
                                                          colorBox = Colors.lightGreenAccent;
                                                        });
                                                      },
                                                          icon: const Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.lightGreenAccent,)),
                                                    ),
                                                    // IconButton(onPressed: (){},
                                                    //     icon: Icon(Icons.circle,
                                                    //       color: Colors.amberAccent,)),
                                                  ],

                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex:1,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(8,4,8,2),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){
                                                        setState(() {
                                                          colorBox = Colors.purpleAccent;
                                                        });
                                                      },
                                                          icon: const Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.purpleAccent,)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){
                                                        setState(() {
                                                          colorBox = Colors.pinkAccent;
                                                        });
                                                      },
                                                          icon: const Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.pinkAccent,)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){
                                                        setState(() {
                                                          colorBox = Colors.brown;
                                                        });
                                                      },
                                                          icon: const Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.brown ,)),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: IconButton(onPressed: (){
                                                        setState(() {
                                                          colorBox = Colors.grey;
                                                        });
                                                      },
                                                          icon: const Icon(Icons.circle,
                                                            size: 50,
                                                            color: Colors.grey,)),
                                                    ),
                                                    // IconButton(onPressed: (){},
                                                    //     icon: Icon(Icons.circle,
                                                    //       color: Colors.amberAccent,)),
                                                  ],

                                                ),
                                              ),
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
                        icon: const Icon(Icons.color_lens),
                    color: Colors.amber,),
                    TextButton(
                          onPressed: (){
                            setState(() {
                              addTask(colorBox);
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

    refresh(){
            //print('refresh');
      setState(() {
        _submit();
        notesScreen();
      });
    }
         void notesScreen(){
           Navigator.of(context).push(MaterialPageRoute(
               builder: (BuildContext context){
                 return Scaffold(
                   backgroundColor: _allNotes.isEmpty ? Colors.white:Colors.grey[200],
                   appBar: AppBar(
                     backgroundColor: Colors.white,
                     actions: [
                       const Expanded( flex : 2,child: SizedBox()),
                       Expanded( flex:1,
                         child: TextButton(onPressed: (){
                          _submit();
                         },
                             child: const Text('Tasks',
                               style: TextStyle(color: Colors.black,
                                   fontWeight: FontWeight.bold),)),
                       ),
                       Expanded( flex:1,
                         child: TextButton(onPressed: (){
                          // _navigate();
                         }, child: const Text('Notes',style:
                         TextStyle(color: Colors.amber,
                             fontWeight: FontWeight.bold),)),
                       ),
                       const Expanded(flex :2,child: SizedBox()),
                       IconButton(
                           onPressed: (){
                             refresh();
                           },
                           icon: const Icon(Icons.refresh,color: Colors.amber))
                     ],
                   ),
                   floatingActionButton: FloatingActionButton(
                     backgroundColor: Colors.amber,
                     onPressed: (){
                       //initState_TextFiled();
                       _controller.text = '';
                       _title.text = '';
                        _navigate();
                       colorNote = Colors.white;
                       //_showMyDialog();
                     },
                     child: const Icon(Icons.add),
                   ),
                   body:_allNotes.isEmpty? Center(child: Image.asset("Assets/notes.jpg")):myWidget(),
                 );
           }));
         }


          Future addTask(dynamic colorBox) async {
            setState(() {
              noteString = _controller.text;
              if(noteString == '')
                {
                 // print('error');
                }
              else
                {
                  _note.insert(0,noteString);
                  _colorTask.insert(0,colorBox);
                  _boolList.insert(0,false);
                   bool = 1;
                }
            });
          }

          editNotes(int i)  {
            setState(()  {
              noteString = _controller.text;
              if(noteString == '')
              {
                //print('error');
              }
              else
              {
                _allNotes[i] = noteString;
              }
            });
          }
          addNote(){
            setState(() {
              noteString = _controller.text;
              if(noteString == '')
              {
                //print('error');
              }
              else
              {
                _allNotes.insert(0,noteString);
                _colorNote.insert(0,colorNote);
                //_boolList.insert(0,false);
               // bool = 1;
              }
            });
          }


          // popupMessage(String s){
          //   _removedNote.insert(0, s);
          // }

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
                  backgroundColor: Colors.white,
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
                           child:
                                 PopupMenuButton(
                                      icon: const Icon(Icons.more_vert),
                                     itemBuilder: (context) => [
                                       PopupMenuItem(
                                         child: const Text('delete'),
                                         onTap: (){
                                           setState(()  {
                                              _submit();
                                              //boolRemove = 1;
                                              noteString = _note[i];
                                                _note.remove(_note[i]);
                                                _colorTask.remove(_colorTask[i]);
                                                //boolRemove = 1;
                                              //  print(boolRemove);
                                               // popupMessage(note_string);
                                           });
                                         },
                                       ),
                                     ]),
                               ),
                         Expanded(
                           flex: 2,
                           child: Padding(
                             padding: const EdgeInsets.fromLTRB(0,8,8,8),
                             child: IconButton(
                                 onPressed: (){
                                   showDialog<void>(context: context,
                                       builder: (BuildContext context){
                                         return Padding(
                                           padding: const EdgeInsets.all(0.0),
                                           child: AlertDialog(
                                             backgroundColor: Colors.grey[100],
                                             title: const Text('Note color'),
                                             content:  Padding(
                                               padding: const EdgeInsets.fromLTRB(0,0,0,15),
                                               child: SizedBox(
                                                 height: 138,
                                                 child: Column(
                                                   children: [
                                                     Expanded(
                                                       flex:1,
                                                       child: Row(
                                                         children: [
                                                           Expanded(
                                                             flex: 1,
                                                             child:
                                                              IconButton(onPressed: (){
                                                                 setState(() {
                                                                   _colorTask[i] = Colors.white;
                                                                 });

                                                               },
                                                                 icon:
                                                                      const Icon(Icons.circle,
                                                                        color: Colors.white,
                                                                        size: 50,
                                                                        //color: Colors.white,
                                                                        ),
                                                                   ),
                                                             ),
                                                           Expanded(
                                                             flex: 1,
                                                             child: IconButton(onPressed: (){
                                                          setState(() {
                                                            _colorTask[i] = Colors.redAccent;
                                                          });
                                                             },
                                                                 icon: const Icon(Icons.circle,
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
                                                                 icon: const Icon(Icons.circle,
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
                                                                 icon: const Icon(Icons.circle,
                                                                   size: 50,
                                                                   color: Colors.amberAccent,)),
                                                           ),
                                                           // IconButton(onPressed: (){},
                                                           //     icon: Icon(Icons.circle,
                                                           //       color: Colors.amberAccent,)),
                                                         ],

                                                       ),
                                                     ),
                                                     Expanded(
                                                       flex:1,
                                                        child: Padding(
                                                         padding: const EdgeInsets.fromLTRB(8,4,8,4),
                                                         child: Row(
                                                           children: [
                                                             Expanded(
                                                               flex: 1,
                                                               child: IconButton(onPressed: (){
                                                                 setState(() {
                                                                   _colorTask[i] = Colors.blueAccent;
                                                                 });
                                                               },
                                                                   icon: const Icon(Icons.circle,
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
                                                                   icon: const Icon(Icons.circle,
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
                                                                   icon: const Icon(Icons.circle,
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
                                                                   icon: const Icon(Icons.circle,
                                                                     size: 50,
                                                                     color: Colors.lightGreenAccent,)),
                                                             ),
                                                             // IconButton(onPressed: (){},
                                                             //     icon: Icon(Icons.circle,
                                                             //       color: Colors.amberAccent,)),
                                                           ],

                                                         ),
                                                     ),
                                                      ),
                                                     Expanded(
                                                       flex:1,
                                                       child: Padding(
                                                         padding: const EdgeInsets.fromLTRB(8,4,8,2),
                                                         child: Row(
                                                           children: [
                                                             Expanded(
                                                               flex: 1,
                                                               child: IconButton(onPressed: (){
                                                                 setState(() {
                                                                   _colorTask[i] = Colors.purpleAccent;
                                                                 });
                                                               },
                                                                   icon: const Icon(Icons.circle,
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
                                                                   icon: const Icon(Icons.circle,
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
                                                                   icon: const Icon(Icons.circle,
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
                                                                   icon: const Icon(Icons.circle,
                                                                     size: 50,
                                                                     color: Colors.grey,)),
                                                             ),
                                                             // IconButton(onPressed: (){},
                                                             //     icon: Icon(Icons.circle,
                                                             //       color: Colors.amberAccent,)),
                                                           ],

                                                         ),
                                                       ),
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
                                 icon: const Icon(Icons.color_lens)),
                           ),
                         ),
                         Expanded(
                           flex:3,
                           child: SizedBox(
                             child: Container(
                               color: Colors.white,
                             ),
                           ),
                         ),
                         Expanded(
                           flex:2,
                           child: Row(
                             children: [TextButton(
                                onPressed: (){
                                  editTask(i);
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
          void editTask(int i)  {
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
          }

          @override
          Widget build(BuildContext context) {
            TextField(
              controller: _controller,
             // maxLines: 10,

              decoration: const InputDecoration(
                hintText: 'Enter a Task what you want to right                    ',
              ),
            );

            return Scaffold(
              backgroundColor: _note.isEmpty ?Colors.white: Colors.grey[200],
              appBar: AppBar(
              //   title: const Text('To do List',
              // style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
                actions: [
                  const Expanded(
                    flex: 2,
                      child: SizedBox()),
                      Expanded( flex: 1,
                        child: TextButton(
                            onPressed: (){
                        },
                            child: const Text('Tasks',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),)),
                      ),
                  Expanded(
                    flex: 1,
                    child: TextButton(onPressed: (){
                      notesScreen();
                    },
                        child: const Text('Note',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                  const Expanded(
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
                  colorBox = Colors.white;
                  // _navigate();
                  _showMyDialog();
                },
                   child: const Icon(Icons.add),
              ),
             // body:  widgetBuildSuggestions(),
              body :_note.isEmpty ?Center(child: Image.asset("Assets/tasks.jpg"))
              :widgetBuildSuggestions()
            );
          }
        }

