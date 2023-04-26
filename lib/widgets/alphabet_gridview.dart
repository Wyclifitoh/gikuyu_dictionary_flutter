
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gikuyu_dictionary/models/alphabet.dart';

class AlphabetGridView extends StatelessWidget {
  final List<Alphabet> alphabet;

  const AlphabetGridView({Key? key, required this.alphabet}) : super(key: key);

  Container getStructuredGridCell(Alphabet alphabet) {
    return  Container(
      height: 30,
      margin: const EdgeInsets.all(15),
      padding:
      const EdgeInsets.all(0),
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
            // IconButton(
            //   padding:
            //   EdgeInsets.zero,
            //   icon: Icon(
            //     Icons.phone,
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
          // SizedBox(height: 10,),
            Align(
              alignment: Alignment
                  .bottomCenter,
              child: Text(alphabet.letter),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      shrinkWrap: true,
      primary: true,
      crossAxisCount: 2,
      // childAspectRatio: 0.80,
      children: List.generate(alphabet.length, (index) {
        return getStructuredGridCell(alphabet[index]);
      }),
    );
  }
}