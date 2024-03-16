import 'package:dartz/dartz.dart';
import '../../../core/data/json_looader.dart';

class AdhkarRepo {
  final jsonLoader = JsonLoader();
  Future<Either<String, List<String>>> loadAdhkar(String category) async {
    try {
      final response = await jsonLoader.loadJson();
      return right(response[category].toList());
    } catch (e) {
      return const Left('Unexpected Error');
    }
  }
}
