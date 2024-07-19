import 'package:core/core.dart';

import '../../domain.dart';
import 'usecase.dart';

class WebSocketDisconnectUseCase implements FutureUseCase<WebSocketChannel, void> {
  final ApiRepository _apiRepository;

  const WebSocketDisconnectUseCase({
    required ApiRepository apiRepository,
  }) : _apiRepository = apiRepository;

  @override
  Future<void> execute(WebSocketChannel chanel) async {
    await _apiRepository.webSocketDisconnect(chanel);
  }
}
