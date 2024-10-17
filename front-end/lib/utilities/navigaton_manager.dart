import 'package:go_router/go_router.dart';
import 'package:memos_app/screens/sistemi_lineari_e_matrici/equazioni_algebriche_screen.dart';
import 'package:memos_app/screens/home_screen.dart';
import 'package:memos_app/screens/sistemi_lineari_e_matrici/principali_insiemi_numerici_screen.dart';
import 'package:memos_app/screens/sistemi_lineari_e_matrici_screen.dart';
import 'package:memos_app/widgets/wrapper_widget.dart';

class NavigationManager {
  NavigationManager._();

  static String home = '/home';
  static String sistemiLineariMatrici = '/sistemi_lineari_e_matrici';
  static String principaliInsiemiNumerici = '/principali_insiemi_numerici';
  static String equazioniAlgebriche = '/equazioni_algebriche_screen';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainWrapper(
            navigationShell: navigationShell,
          );
        },

        branches: <StatefulShellBranch>[
          StatefulShellBranch(routes: [
            GoRoute(
                path: home,
                name: 'Home',
                builder: (context, state) {
                  return HomePage(
                    key: state.pageKey,
                  );
                })
          ]),



          StatefulShellBranch(
            routes: [
            GoRoute(
                path: sistemiLineariMatrici,
                name: 'Sistemi lineari e matrici',
                builder: (context, state) {
                  return SistemiLineariMatriciSceen(
                    key: state.pageKey,
                  );
                }),
          ]),

          
          StatefulShellBranch(
            routes: [
            GoRoute(
                path: principaliInsiemiNumerici,
                name: 'Principali insiemi numerici',
                builder: (context, state) {
                  return PrincipaliInsiemiNumericiScreen(
                    key: state.pageKey,
                  );
                }),
          ]),


          
          StatefulShellBranch(
            routes: [
            GoRoute(
                path: equazioniAlgebriche,
                name: 'Equazioni algebriche',
                builder: (context, state) {
                  return EquazioniAlgebricheScreen(
                    key: state.pageKey,
                  );
                }),
          ]),
        ],
      )
    ],
  );
}
