import 'package:flutter/material.dart';
import 'package:islami_application/home%20screen/quran_tap/soura_details.dart';

class VerseName extends StatelessWidget {
  String nameSoura;
  int index;
  VerseName({required this.nameSoura,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,
            SouraDetails.routeName,
            arguments: SouraDetailsArgs(name: nameSoura, index: index),
        );
      },
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Text(nameSoura , style: TextStyle(color: Color(0xff242424),fontSize: 25),),
        ),
    );
  }
}
