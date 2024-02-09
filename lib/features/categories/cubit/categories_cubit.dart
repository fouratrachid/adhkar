import 'package:adhkar/features/categories/repositories/categories_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesRepo repo = CategoriesRepo();
  CategoriesCubit() : super(CategoriesInitial());

  void loadCategoires() async {
    emit(CategoriesLoading());
    final response = await repo.loadCategoires();
    return response.fold((message) => emit(CategoriesError(message)),
        (categories) => emit(CategoriesLoaded(categories)));
  }
}
