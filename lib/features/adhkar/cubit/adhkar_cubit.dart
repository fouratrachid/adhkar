import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'adhkar_state.dart';

class AdhkarCubit extends Cubit<AdhkarState> {
  AdhkarCubit() : super(AdhkarInitial());
}
