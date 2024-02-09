import 'package:adhkar/core/data/json_looader.dart';
import 'package:dartz/dartz.dart';

class CategoriesRepo {
  final jsonLoader = JsonLoader();
  Future<Either<String, List<String>>> loadCategoires() async {
    try {
      final response = await jsonLoader.loadJson();
      return right(response.keys.toList());
    } catch (e) {
      return const Left('Unexpected Error');
    }
  }
}
