import 'package:go_router/go_router.dart';
import 'package:jaylin_wedding/features/home/presentation/pages/home_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', name: 'home', builder: (context, state) => HomePage()),
    // GoRoute(
    //   path: '/details/:id',
    //   name: 'details',
    //   builder: (context, state) {
    //     final id = state.params['id']!;
    //     return DetailsPage(itemId: id);
    //   },
    // ),
    // …more routes…
  ],
);
