import 'package:flutter_modular/flutter_modular.dart';
import 'package:hypernews/app/pages/home/home_module.dart';
import 'package:hypernews/app/pages/home/home_screen.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomeScreen()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
