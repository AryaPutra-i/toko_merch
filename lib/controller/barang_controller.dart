import 'package:http/http.dart' as http;

class Barang_Controller {
  Future<String> fecthData(String cariBarang) async{
   final response = await http.post(
    Uri.parse("http://192.168.1.7/api_database/getBarang.php"),
    body:{
      "cari": cariBarang
    });
    if (response.statusCode == 200) {
      return response.body;
    }else{
      return "Data gagal diambil";
    }

  }
}