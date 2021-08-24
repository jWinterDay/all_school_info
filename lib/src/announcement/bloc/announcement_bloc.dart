// ignore_for_file: always_use_package_imports
import 'dart:async';
import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementBloc extends Bloc<AnnouncementAction, AnnouncementState> {
  AnnouncementBloc({
    required this.testMode,
  }) : super(const AnnouncementState()) {
    _subscribe();
  }

  final bool testMode;

  StreamSubscription<bool>? _awaitingOfSomething;

  // replace this with package State and Actions for using redux
  // PackageState _packageState => storeProvider.state<PackageState>State>();
  // PackageActions get _packageActions => storeProvider.actions<PackageActions>();
  // Stream<PackageState> get _packageStateStream => storeProvider.streamState<PackageState>();

  @override
  Future<void> close() {
    _awaitingOfSomething?.cancel();

    return super.close();
  }

  @override
  Stream<AnnouncementState> mapEventToState(AnnouncementAction event) async* {
    yield* event.maybeMap<Stream<AnnouncementState>>(
      start: (_) => _mapStartToState(),
      // ignore: always_specify_types
      changeLoading: (blocEvent) => _changeLoading(blocEvent.value),
      orElse: _mapDefaultEventToState,
    );
  }

  /// initial values
  Stream<AnnouncementState> _mapStartToState() async* {
    yield AppDomainProvider.appStore.state.announcementState;
  }

  /// loading
  Stream<AnnouncementState> _changeLoading(bool value) async* {
    AppDomainProvider.appStore.dispatch(
      AnnouncementAction.changeLoading(value: !AppDomainProvider.appStore.state.announcementState.loading),
    );

    yield AppDomainProvider.appStore.state.announcementState;
  }

  /// default handler
  Stream<AnnouncementState> _mapDefaultEventToState() async* {}

  /// `subscribe to redux state`
  void _subscribe() {
    // _awaitingOfSomething = _packageStateStream.map((PackageState _packageState) {
    //   return _packageState.loading;
    // }).listen((bool loading) {
    //   emit(state.copyWith(
    //     loading: loading,
    //   ));
    // });
  }
}
