import 'package:flutter_modular/flutter_modular.dart';
import 'package:hypernews/app/pages/home/home_state.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeState()),
  ];

  @override
  final List<ModularRoute> routes = [
    
  ];

}