import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gikuyu_dictionary/pages/home_page.dart';
import 'package:http/http.dart' as http;

import '../models/alphabet.dart';
import '../models/netwoklayer.dart';
import '../widgets/alphabet_gridview.dart';
import '../widgets/app_bar.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/widget_functions.dart';
import 'activate_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {
    final grammer = CupertinoIcons.money_dollar_circle_fill;
    return  Scaffold(
      appBar: buildMyAppBar(context, 'Dictionary'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 80,
            //   margin: EdgeInsets.only(left: 25.0, right: 25.0),
            //   child: Column(
            //     children: [
            //       addVerticalSpace(10),
            //       Wrap(children: [
            //         Container(
            //           width: MediaQuery.of(context) .size.width,
            //           padding:
            //           const EdgeInsets.all(10),
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius:
            //               BorderRadius.circular(
            //                   15),
            //               boxShadow: [
            //                 BoxShadow(
            //                     blurRadius: 3,
            //                     offset: const Offset(
            //                         5, 5),
            //                     color: Colors
            //                         .lightBlue
            //                         .withOpacity(
            //                         0.1)),
            //                 BoxShadow(
            //                     blurRadius: 3,
            //                     offset: const Offset(
            //                         -5, -5),
            //                     color: Colors
            //                         .lightBlue
            //                         .withOpacity(0.1))
            //               ]),
            //           child: Center(
            //             child: Row(
            //               mainAxisAlignment:
            //               MainAxisAlignment
            //                   .center,
            //               crossAxisAlignment:
            //               CrossAxisAlignment
            //                   .center,
            //               children: [
            //                 IconButton(
            //                   padding:
            //                   EdgeInsets.zero,
            //                   icon: Icon(
            //                     grammer,
            //                     size: 40,
            //                   ),
            //                   color: Colors.blue,
            //                   onPressed: () {
            //                     Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder:
            //                               (context) =>
            //                           const HomePage(alphabet: 'GRAMMER',)),
            //                     );
            //                   },
            //                 ),
            //                 addVerticalSpace(10),
            //                 const Align(
            //                   alignment: Alignment
            //                       .bottomCenter,
            //                   child: Text('Mwarīrie \n   wa  \nGīkūyū'),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ]),
            //     ],
            //   ),
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(bottom: 50.0),
              // color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      child: OverflowBox(
                          maxWidth: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HomePage(alphabet: 'A',)),
                                        );
                                      },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30,
                                            bottom: 15,
                                            top: 25),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              const Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child: Text('A'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'B',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30,
                                              bottom: 15,
                                              top: 25),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child: Text(
                                                      'B'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'C',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('C'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'E',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('E'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'G',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('G'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'H',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child: Text(
                                                      'H'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'I',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('I'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'NJ',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('NJ'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'NG',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('NG'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'K',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('K'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'M',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('M'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'MB',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('MB'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'N',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('N'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'ND',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('ND'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'NG',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('NG'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'NY',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('NY'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'O',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('O'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'R',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('R'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'T',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('T'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'U',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  15),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child: Text(
                                                      'U'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'W',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('W'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'Y',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('Y'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  addVerticalSpace(10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'P',)),
                                      );
                                    },
                                    child: Wrap(children: [
                                      Container(
                                        width: (MediaQuery.of(context)
                                            .size
                                            .width -
                                            90) /
                                            2,
                                        margin: const EdgeInsets.only(
                                            left: 30, bottom: 15),
                                        padding:
                                        const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(
                                                4),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      5, 5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(
                                                      0.1)),
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  offset: const Offset(
                                                      -5, -5),
                                                  color: Colors
                                                      .lightBlue
                                                      .withOpacity(0.1))
                                            ]),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                            children: [
                                              Align(
                                                alignment: Alignment
                                                    .bottomCenter,
                                                child:
                                                Text('P'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage(alphabet: 'REF',)),
                                      );
                                    },
                                    child: Wrap(
                                      children: [
                                        Container(
                                          width: (MediaQuery.of(context)
                                              .size
                                              .width -
                                              90) /
                                              2,
                                          margin: const EdgeInsets.only(
                                              left: 30, bottom: 15),
                                          padding:
                                          const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  4),
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        5, 5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1)),
                                                BoxShadow(
                                                    blurRadius: 3,
                                                    offset:
                                                    const Offset(
                                                        -5, -5),
                                                    color: Colors
                                                        .lightBlue
                                                        .withOpacity(
                                                        0.1))
                                              ]),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child:
                                                  Text('REF'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
