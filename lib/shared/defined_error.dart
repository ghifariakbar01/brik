import 'package:freezed_annotation/freezed_annotation.dart';

part 'defined_error.freezed.dart';

@freezed
class DefinedError with _$DefinedError {
  factory DefinedError.network([int? statusCode, String? message]) = _Network;
  factory DefinedError.others() = _Others;
}
