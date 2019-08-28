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
    //inicia o stream
    bloc = homeBloc();
    super.initState();
  }

  @override
  void dispose() {
    //fecha o stream
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Object>(
          stream: bloc.out,
          initialData: 0,
          builder: (context, snapshot) {
            return Container(
              padding: EdgeInsets.all(32.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Image.asset("images/bitcoin.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 30),
                      child: Text(
                        "R\$ " + snapshot.data,
                        style: TextStyle(fontSize: 36),
                      ),
                    ),
                    RaisedButton(
                      child: Text(
                        "Atualizar",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      color: Colors.orange,
                      padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                      onPressed: this.bloc.recuperarpreco,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
