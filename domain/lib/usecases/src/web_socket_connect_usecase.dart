import '../../domain.dart';
import 'usecase.dart';

class WebSocketConnectUseCase implements FutureUseCase<String, void> {
  final ApiRepository _apiRepository;

  const WebSocketConnectUseCase({
    required ApiRepository apiRepository,
  }) : _apiRepository = apiRepository;

  @override
  Future<void> execute(String url) {
   return _apiRepository.webSocketConnect(url);
  }
}
