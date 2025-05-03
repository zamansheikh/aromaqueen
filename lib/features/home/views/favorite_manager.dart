// favorite_manager.dart
class FavoriteManager {
  static final FavoriteManager _instance = FavoriteManager._internal();

  factory FavoriteManager() => _instance;

  FavoriteManager._internal();

  final List<Map<String, String>> _favorites = [];

  List<Map<String, String>> get favorites => _favorites;

  void addFavorite(Map<String, String> recipe) {
    if (!_favorites.contains(recipe)) {
      _favorites.add(recipe);
    }
  }

  void removeFavorite(Map<String, String> recipe) {
    _favorites.remove(recipe);
  }

  bool isFavorite(Map<String, String> recipe) {
    return _favorites.contains(recipe);
  }
}
