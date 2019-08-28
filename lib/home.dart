import 'package:flutter/material.dart';
import 'package:flutter_app_preco_bitcoin_bloc/home.dart';
import 'package:flutter_app_preco_bitcoin_bloc/home_bloc.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();




}




class _homePageState extends State<homePage> {


  homeBloc bloc;

  @override
  void initState() {
    bloc = homeBloc();
    super.initState();
  }
  
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

      ),
    );
  }
}
