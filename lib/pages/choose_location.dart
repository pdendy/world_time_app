import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
  //simulate network request for username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });

  //simulate network request to get bio of username
    String bio = await Future.delayed(Duration(seconds: 2), () {
    return 'vegan, musician & egg collector';
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {

          });
        },
        child: Text(''),
      )
    );
  }
}
