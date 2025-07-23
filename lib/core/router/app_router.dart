import 'package:go_router/go_router.dart';
import 'package:jaylin_wedding/features/faqs/faq_page.dart';
import 'package:jaylin_wedding/features/home/presentation/pages/home_page.dart';
import 'package:jaylin_wedding/features/wedding_party/wedding_party.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(path: '/home', name: 'home', builder: (context, state) => HomePage()),
    GoRoute(path: '/wedding_party', name: 'wedding_party', builder: (context, state) => WeddingPartyPage()),
    GoRoute(path: '/faqs', name: 'faqs', builder: (context, state) => FAQPage()),
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
