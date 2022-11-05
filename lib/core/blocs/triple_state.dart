import 'package:freezed_annotation/freezed_annotation.dart';

part 'triple_state.freezed.dart';

@freezed
class TripleState<T> with _$TripleState<T> {
  const factory TripleState() = _TripleState;

  const factory TripleState.loading() = _Loading;

  const factory TripleState.failure(Exception error) = _Failure;

  const factory TripleState.success(T data) = _Success;
}
