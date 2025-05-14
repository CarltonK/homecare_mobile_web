import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
abstract class ResponseModel with _$ResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory ResponseModel({
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'validation_errors') ValidationErrors? validationErrors,
    @JsonKey(name: 'feedback') Feedback? feedback,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}

@freezed
abstract class ValidationErrors with _$ValidationErrors {
  const factory ValidationErrors({
    @JsonKey(name: 'email') List<String>? email,
  }) = _ValidationErrors;

  factory ValidationErrors.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorsFromJson(json);
}

@freezed
abstract class Feedback with _$Feedback {
  const factory Feedback({
    @JsonKey(name: 'warning') required String warning,
    @JsonKey(name: 'suggestions') required List<String> suggestions,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}
