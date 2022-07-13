import 'package:flutter/material.dart';

class SpalshScreen extends StatefulWidget {
  final dynamic currentPage;

  const SpalshScreen({Key? key, this.currentPage}) : super(key: key);
  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 14), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => widget.currentPage()));

  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/spalsh.png"))),
    );
  }
}
