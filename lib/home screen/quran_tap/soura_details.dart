import 'package:flutter/material.dart';
class SouraDetails extends StatelessWidget {
  static const routeName = "SouraDetails";
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SouraDetailsArgs;
    print(args.name);
    print(args.index);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background/background_home_screen.png"),
            fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
          leading: IconButton(
            icon: Icon(
                Icons.arrow_back_ios
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
class SouraDetailsArgs{
  String name;
  int index;
  SouraDetailsArgs({required this.name,required this.index});
}

