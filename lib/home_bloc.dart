import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class homeBloc {

  double bitcoinPrice = 0;

  var _priceStreamController = new StreamController<double>();

  String url = "https://blockchain.info/ticker";

  //saida do stream
  Stream<double> get out => _priceStreamController.stream;
  //entrada do stream
  Sink<double> get inn => _priceStreamController.sink;



  void recuperarpreco () async {

    http.Response response = await http.get(url);

    Map<String,dynamic> retorno = json.decode( response.body );

    bitcoinPrice = retorno["BLR"]["buy"];

    //Entra o preco no stream
    //_priceStreamController.sink.add(bitcoinPrice);
    _priceStreamController.sink.add(bitcoinPrice);
  }


  void dispose(){
    _priceStreamController.close();
  }


}