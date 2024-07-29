import '../../domain.dart';
import 'usecase.dart';

class WebSocketGetStreamUseCase implements StreamUseCase<NoParams, dynamic> {
  final ApiRepository _apiRepository;

  const WebSocketGetStreamUseCase({
    required ApiRepository apiRepository,
  }) : _apiRepository = apiRepository;

  @override
  Stream<dynamic> execute([NoParams? noParams]) {
   return _apiRepository.webSocketGetStream();
  }
}
