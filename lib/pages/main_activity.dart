import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/app_bar.dart';
import '../widgets/widget_functions.dart';
import 'home_page.dart';

class MainActivity extends StatefulWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'Gĩkũyũ Dictionary'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // const Padding(
            //   padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            //   child: TextField(
            //     //controller: searchController,
            //     decoration: InputDecoration(
            //         labelText: 'Search'),
            //   ),
            // ),
            // ListView.builder(
            //   // itemExtent: 200,
            //     itemCount: _allAlphabet.length,
            //     shrinkWrap: true,
            //     padding: const EdgeInsets.only(top: 16),
            //     physics: const NeverScrollableScrollPhysics(),
            //     itemBuilder: (context, index) {
            //       debugPrint(_allAlphabet[index].letter);
            //       // final mydictionary = dic[index];
            //       return AlphabetGridView(alphabet: _allAlphabet);
            //     }
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 800,
              margin: EdgeInsets.only(bottom: 50.0),
              // color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Expanded(
                      child: OverflowBox(
                          maxWidth: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Expanded(
                                child: ListView(
                                  children: [
                                    Row(
                                      children: [
                                        addVerticalSpace(10),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'A',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     rent,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder:
                                                    //     //           (context) =>
                                                    //     //       const RentPage()),
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'B',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     person,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //   context,
                                                      //     //   MaterialPageRoute(
                                                      //     //       builder: (context) =>
                                                      //     //           Amenities(
                                                      //     //               title:
                                                      //     //               'Visitors',
                                                      //     //               desc:
                                                      //     //               'Your Property does not support this module')), //VisitorsPage
                                                      //     // );
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('B'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'C',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('C'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'E',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('E'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'G',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     complain,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder:
                                                    //     //           (context) =>
                                                    //     //       const Complaint()),
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('G'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'H',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     facility,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //   context,
                                                      //     //   MaterialPageRoute(
                                                      //     //       builder: (context) =>
                                                      //     //           Amenities(
                                                      //     //               title:
                                                      //     //               'Facilities',
                                                      //     //               desc:
                                                      //     //               'Sorry! your property does not have any facility to book for')),
                                                      //     // );
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('H'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'I',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('I'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'NJ',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('NJ'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'NG',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('NG'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'K',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('K'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'M',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('M'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'MB',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('MB'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'N',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('N'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'ND',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('ND'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'NG',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('NG'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'NY',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('NY'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'O',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('O'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'R',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('R'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'T',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     complain,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder:
                                                    //     //           (context) =>
                                                    //     //       const Complaint()),
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('T'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'U',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     facility,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //   context,
                                                      //     //   MaterialPageRoute(
                                                      //     //       builder: (context) =>
                                                      //     //           Amenities(
                                                      //     //               title:
                                                      //     //               'Facilities',
                                                      //     //               desc:
                                                      //     //               'Sorry! your property does not have any facility to book for')),
                                                      //     // );
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('U'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'W',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('W'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'Y',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('Y'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'P',
                                                      )),
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
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset:
                                                            const Offset(5, 5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1)),
                                                    BoxShadow(
                                                        blurRadius: 3,
                                                        offset: const Offset(
                                                            -5, -5),
                                                        color: Colors.lightBlue
                                                            .withOpacity(0.1))
                                                  ]),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    // IconButton(
                                                    //   padding:
                                                    //   EdgeInsets.zero,
                                                    //   icon: Icon(
                                                    //     paybill,
                                                    //     size: 40,
                                                    //   ),
                                                    //   color: Colors.blue,
                                                    //   onPressed: () {
                                                    //     // Navigator.push(
                                                    //     //   context,
                                                    //     //   MaterialPageRoute(
                                                    //     //       builder: (context) =>
                                                    //     //           Amenities(
                                                    //     //               title:
                                                    //     //               'My Bills',
                                                    //     //               desc:
                                                    //     //               'Your Property does not support this module')), // PayBills()
                                                    //     // );
                                                    //   },
                                                    // ),
                                                    // addVerticalSpace(10),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text('P'),
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
                                                  builder: (context) =>
                                                      HomePage(
                                                        alphabet: 'REF',
                                                      )),
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
                                                      // IconButton(
                                                      //   padding:
                                                      //   EdgeInsets.zero,
                                                      //   icon: Icon(
                                                      //     repairs,
                                                      //     size: 40,
                                                      //   ),
                                                      //   color: Colors.blue,
                                                      //   onPressed: () {
                                                      //     // Navigator.push(
                                                      //     //     context,
                                                      //     //     MaterialPageRoute(
                                                      //     //         builder:
                                                      //     //             (context) =>
                                                      //     //             Repairs()));
                                                      //   },
                                                      // ),
                                                      // addVerticalSpace(10),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Text('REF'),
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
                                    // Row(
                                    //   children: [
                                    //     addVerticalSpace(10),
                                    //     GestureDetector(
                                    //       onTap: () {
                                    //         Navigator.push(
                                    //           context,
                                    //           MaterialPageRoute(
                                    //               builder: (context) => HomePage(alphabet: 'REF',)),
                                    //         );
                                    //       },
                                    //       child: Wrap(children: [
                                    //         Container(
                                    //           width: (MediaQuery.of(context)
                                    //               .size
                                    //               .width -
                                    //               60),
                                    //           margin: const EdgeInsets.only(
                                    //               left: 30, bottom: 15),
                                    //           padding:
                                    //           const EdgeInsets.all(10),
                                    //           decoration: BoxDecoration(
                                    //               color: Colors.white,
                                    //               borderRadius:
                                    //               BorderRadius.circular(
                                    //                   4),
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
                                    //             child: Column(
                                    //               mainAxisAlignment:
                                    //               MainAxisAlignment
                                    //                   .center,
                                    //               crossAxisAlignment:
                                    //               CrossAxisAlignment
                                    //                   .center,
                                    //               children: [
                                    //                 // IconButton(
                                    //                 //   padding:
                                    //                 //   EdgeInsets.zero,
                                    //                 //   icon: Icon(
                                    //                 //     smartdevice,
                                    //                 //     size: 40,
                                    //                 //   ),
                                    //                 //   color: Colors.blue,
                                    //                 //   onPressed: () {
                                    //                 //     Navigator.push(
                                    //                 //       context,
                                    //                 //       MaterialPageRoute(
                                    //                 //           builder: (context) =>
                                    //                 //               Amenities(
                                    //                 //                   title:
                                    //                 //                   'Smart Device',
                                    //                 //                   desc:
                                    //                 //                   'Your Property does not support this module')), //VisitorsPage
                                    //                 //     );
                                    //                 //   },
                                    //                 // ),
                                    //                 // addVerticalSpace(10),
                                    //                 Align(
                                    //                   alignment: Alignment
                                    //                       .bottomCenter,
                                    //                   child: Text(
                                    //                       'Reference'),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ]),
                                    //     ),
                                    //   ],
                                    // ),
                                  ],
                                ),
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
