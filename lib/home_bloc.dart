import 'dart:async';

class homeBloc {

  int bitcoinPrice = 0;

  var _priceStreamController = new StreamController<int>();



  //saida do stream
  Stream<int> get out => _priceStreamController.stream;
  //entrada do stream
  Sink<int> get inn => _priceStreamController.sink;





  void dispose(){
    _priceStreamController.close();
  }


}