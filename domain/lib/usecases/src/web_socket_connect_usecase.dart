import 'package:core/core.dart';

import '../../domain.dart';
import 'usecase.dart';

class WebSocketConnectUseCase implements FutureUseCase<String, WebSocketChannel> {
  final ApiRepository _apiRepository;

  const WebSocketConnectUseCase({
    required ApiRepository apiRepository,
  }) : _apiRepository = apiRepository;

  @override
  Future<WebSocketChannel> execute(String url) {
   return _apiRepository.webSocketConnect(url);
  }
}
