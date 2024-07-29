import '../../domain.dart';
import 'usecase.dart';

class WebSocketDisconnectUseCase implements FutureUseCase<NoParams, void> {
  final ApiRepository _apiRepository;

  const WebSocketDisconnectUseCase({
    required ApiRepository apiRepository,
  }) : _apiRepository = apiRepository;

  @override
  Future<void> execute([NoParams? params]) async {
    await _apiRepository.webSocketDisconnect();
  }
}
