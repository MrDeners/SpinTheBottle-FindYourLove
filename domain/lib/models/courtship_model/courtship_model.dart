import 'package:core/core.dart';

part 'courtship_model.freezed.dart';
part 'courtship_model.g.dart';

@freezed
class CourtshipModel with _$CourtshipModel {
  @JsonSerializable(explicitToJson: true)
  const factory CourtshipModel({
    String? partnerId,
    @Default(1) int price,
    DateTime? started,
  }) = _CourtshipModel;

  const CourtshipModel._();

  factory CourtshipModel.fromJson(Map<String, dynamic> json) => _$CourtshipModelFromJson(json);

}



