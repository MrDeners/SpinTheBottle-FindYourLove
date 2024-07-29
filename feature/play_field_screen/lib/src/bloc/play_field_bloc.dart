import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:navigation/navigation.dart';

part 'play_field_event.dart';

part 'play_field_state.dart';

class PlayFieldBloc extends Bloc<PlayFieldEvent, PlayFieldState> {
  final AppRouter _appRouter;
  final GetUsersOnTableUseCase _getUsersOnTableUseCase;
  final GetTableIdByUserDataUseCase _getTableIdByUserDataUseCase;
  final WebSocketConnectUseCase _webSocketConnectUseCase;
  final WebSocketDisconnectUseCase _webSocketDisconnectUseCase;
  final WebSocketGetStreamUseCase _webSocketGetStreamUseCase;

  PlayFieldBloc({
    required AppRouter appRouter,
    required GetUsersOnTableUseCase getUsersOnTableUseCase,
    required GetTableIdByUserDataUseCase getTableIdByUserDataUseCase,
    required WebSocketConnectUseCase webSocketConnectUseCase,
    required WebSocketDisconnectUseCase webSocketDisconnectUseCase,
    required WebSocketGetStreamUseCase webSocketGetStreamUseCase,
  })  : _appRouter = appRouter,
        _getUsersOnTableUseCase = getUsersOnTableUseCase,
        _getTableIdByUserDataUseCase = getTableIdByUserDataUseCase,
        _webSocketConnectUseCase = webSocketConnectUseCase,
        _webSocketDisconnectUseCase = webSocketDisconnectUseCase,
        _webSocketGetStreamUseCase = webSocketGetStreamUseCase,
        super(const PlayFieldState()) {
    on<UpdateTablePlayersEvent>(_onUpdateTablePlayers);
    on<EnterToPlayFieldEvent>(_onEnterToPlayField);
    on<NavigateBackEvent>(_onNavigateBack);
    on<NavigateUserProfileEvent>(_onNavigateUserProfile);
    on<ClosePlayFieldEvent>(_onClosePlayField);

    add(const EnterToPlayFieldEvent());
  }

  Future<void> _onUpdateTablePlayers(
    UpdateTablePlayersEvent event,
    Emitter<PlayFieldState> emit,
  ) async {
    emit(
      state.copyWith(
        users: await _getUsersOnTableUseCase.execute(),
      ),
    );
  }

  Future<void> _onEnterToPlayField(
    EnterToPlayFieldEvent event,
    Emitter<PlayFieldState> emit,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final UserModel user = UserModel.fromJson(
      jsonDecode(
        prefs.getString('user')!,
      ),
    );

    //final String tableId = await _getTableIdByUserDataUseCase.execute(user);
    //TODO: get url with tableID
    //await _webSocketConnectUseCase.execute('tableId');
    //final Stream<dynamic> stream = _webSocketGetStreamUseCase.execute();

    emit(
      state.copyWith(
        currentUser: user,
        //webSocketStream: stream,
      ),
    );

    add(const UpdateTablePlayersEvent());
  }

  Future<void> _onClosePlayField(
    ClosePlayFieldEvent event,
    Emitter<PlayFieldState> emit,
  ) async {
    await _webSocketDisconnectUseCase.execute();
  }

  Future<void> _onNavigateBack(
    NavigateBackEvent event,
    Emitter<PlayFieldState> emit,
  ) async {
    add(const ClosePlayFieldEvent());

    await _appRouter.maybePop();
  }

  Future<void> _onNavigateUserProfile(
    NavigateUserProfileEvent event,
    Emitter<PlayFieldState> emit,
  ) async {
    await _appRouter.push(
      ProfileAlertDialogRoute(user: event.user),
    );
  }
}
