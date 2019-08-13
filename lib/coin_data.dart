import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker';

//https://apiv2.bitcoinaverage.com/indices/global/ticker/BTCUSD
class CoinData {
  //TODO: Create your getCoinData() method here.

  Future getCoinData() async {
    return new Future.delayed(const Duration(seconds: 2), () => '11000');

    http.Response response = await http.get(bitcoinAverageURL);

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      var decodeData = jsonDecode(data);
      return decodeData['last'];
    }
  }
}
