// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/i.failure.dart';

part 'api.failures.freezed.dart';

@freezed
class ApiFailures with _$ApiFailures implements IFailure {
  const factory ApiFailures.connnectionTimeOut() = _connectiontimeout;
  const factory ApiFailures.cancel() = _cancel;
  const factory ApiFailures.noResponse() = _noResponse;
  const factory ApiFailures.notfound() = _notFound;
  const factory ApiFailures.internalError() = _internalError;
  const factory ApiFailures.authFailed() = _authFailed;
  const factory ApiFailures.noConnection() = _noConnection;
}
