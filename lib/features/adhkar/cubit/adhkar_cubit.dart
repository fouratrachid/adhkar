import 'package:adhkar/features/adhkar/repositories/adhkar_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'adhkar_state.dart';

class AdhkarCubit extends Cubit<AdhkarState> {
  final AdhkarRepo repo = AdhkarRepo();
  AdhkarCubit() : super(AdhkarInitial());

  void loadAdhkar(String category) async {
    emit(AdhkarLoading());
    final response = await repo.loadAdhkar(category);
    return response.fold((message) => emit(AdhkarError(message)),
        (adhkar) => emit(AdhkarLoaded(adhkar)));
  }
}
