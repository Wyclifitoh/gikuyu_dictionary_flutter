import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DictionaryList extends StatefulWidget {
  String alphabet;
  String title;
  String summary;
  String description;
  String audio_file;

  DictionaryList(
      {required this.alphabet,
      required this.title,
        required this.summary,
      required this.description,
      required this.audio_file});

  @override
  _DictionaryListState createState() => _DictionaryListState();
}

class _DictionaryListState extends State<DictionaryList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        margin: EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 5),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3,
                  offset: const Offset(5, 5),
                  color: Colors.lightBlue.withOpacity(0.1)),
              BoxShadow(
                  blurRadius: 3,
                  offset: const Offset(-5, -5),
                  color: Colors.lightBlue.withOpacity(0.1))
            ]),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //       color: Colors.grey.shade200,
                      //       borderRadius: BorderRadius.circular(5),
                      //       boxShadow: [
                      //         BoxShadow(
                      //             blurRadius: 3,
                      //             offset: const Offset(5, 5),
                      //             color: Colors.lightBlue.withOpacity(0.1)),
                      //         BoxShadow(
                      //             blurRadius: 3,
                      //             offset: const Offset(-5, -5),
                      //             color: Colors.lightBlue.withOpacity(0.1))
                      //       ]),
                      //   child: IconButton(
                      //     padding: EdgeInsets.zero,
                      //     icon: Icon(
                      //       CupertinoIcons.bolt_fill,
                      //       size: 35,
                      //     ),
                      //     color: Colors.blue,
                      //     onPressed: () {},
                      //   ),
                      // ),
                      // SizedBox(
                      //   width: 16,
                      // ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.title,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      widget.summary,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                                width: MediaQuery.of(context)
                                    .size
                                    .width,

                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      widget.description,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Container(
                              //   width: 100,
                              //   padding: EdgeInsets.only(
                              //       left: 16, right: 16, top: 10, bottom: 10),
                              //   margin: EdgeInsets.only(
                              //       left: 0, right: 8, top: 10, bottom: 5),
                              //   decoration: BoxDecoration(
                              //       color: Color.fromARGB(255, 207, 83, 38),
                              //       borderRadius: BorderRadius.circular(4),
                              //       boxShadow: [
                              //         BoxShadow(
                              //             blurRadius: 3,
                              //             offset: const Offset(5, 5),
                              //             color: Colors.lightBlue
                              //                 .withOpacity(0.1)),
                              //         BoxShadow(
                              //             blurRadius: 3,
                              //             offset: const Offset(-5, -5),
                              //             color:
                              //                 Colors.lightBlue.withOpacity(0.1))
                              //       ]),
                              //   child: Row(
                              //     children: [
                              //       Icon(
                              //         CupertinoIcons.play,
                              //         color: Colors.white,
                              //       ),
                              //       Text(
                              //         'Tonga',
                              //         style: TextStyle(color: Colors.white),
                              //       ),
                              //     ],
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
