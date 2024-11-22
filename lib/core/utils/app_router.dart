import 'package:books_app/features/home/data/presentation/view_models/views/book_details_view.dart';
import 'package:books_app/features/home/data/presentation/view_models/views/home_view.dart';
import 'package:books_app/features/searsh/presentation/views/search_view.dart';
import 'package:books_app/features/searsh/presentation/views/widgets/saerch_view_body.dart';
import 'package:books_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView())
    ],
  );
}
