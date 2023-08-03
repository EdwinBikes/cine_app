import 'package:cine_app/domain/entities/movie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieMapNotifier extends StateNotifier<Map<String, Movie>> {
  MovieMapNotifier() : super({});

  Future<void> loadMovie() async {}
}
