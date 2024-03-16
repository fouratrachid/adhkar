part of 'adhkar_cubit.dart';

@immutable
sealed class AdhkarState {}

final class AdhkarInitial extends AdhkarState {}

final class AdhkarLoaded extends AdhkarState {
  final List<String> adhkar;
  AdhkarLoaded(this.adhkar);
}

final class AdhkarLoading extends AdhkarState {}

final class AdhkarError extends AdhkarState {
  final String message;
  AdhkarError(this.message);
}
