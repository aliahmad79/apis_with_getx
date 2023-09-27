import 'package:api_with_getx/constant/constant.dart';
import 'package:api_with_getx/model/product_model.dart';
import 'package:api_with_getx/services/http_service/http_services.dart';

class HomeRepo {
  static Future<List<Product>?> fetchProducts() async {
    var response = await HttpServices.get(AppConstant.endPoint);

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}