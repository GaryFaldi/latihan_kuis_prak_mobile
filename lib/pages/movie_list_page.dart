import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import '../models/watchlist_model.dart';
import 'movie_detail_page.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  void _toggleSave(MovieModel movie) {
    setState(() {
      WatchlistModel.toggleSave(movie);
    });
    final saved = WatchlistModel.isSaved(movie);
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          saved
              ? '${movie.title} ditambahkan ke daftar!'
              : '${movie.title} dihapus dari daftar.',
        ),
        backgroundColor: saved ? const Color(0xFFE50914) : Colors.grey[800],
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D0D0D),
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: const Color(0xFFE50914),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Icon(
                Icons.movie_filter_rounded,
                color: Colors.white,
                size: 18,
              ),
            ),
            const SizedBox(width: 10),
            const Text(
              "CineVault",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.bookmark_rounded, color: Colors.white70),
                onPressed: () {
                  // Could navigate to saved list
                },
              ),
              if (WatchlistModel.savedMovies.isNotEmpty)
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE50914),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${WatchlistModel.savedMovies.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: Text(
              "${movieList.length} Film Tersedia",
              style: const TextStyle(color: Colors.white54, fontSize: 13),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                final movie = movieList[index];
                final isSaved = WatchlistModel.isSaved(movie);
                return _MovieCard(
                  movie: movie,
                  isSaved: isSaved,
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MovieDetailPage(movie: movie),
                      ),
                    );
                    setState(() {});
                  },
                  onToggleSave: () => _toggleSave(movie),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _MovieCard extends StatelessWidget {
  final MovieModel movie;
  final bool isSaved;
  final VoidCallback onTap;
  final VoidCallback onToggleSave;

  const _MovieCard({
    required this.movie,
    required this.isSaved,
    required this.onTap,
    required this.onToggleSave,
  });

  Color _genreColor(String genre) {
    const map = {
      'Sci-Fi': Color(0xFF00BCD4),
      'Drama': Color(0xFF8BC34A),
      'Action': Color(0xFFFF5722),
      'Crime': Color(0xFF9C27B0),
      'Romance': Color(0xFFE91E63),
      'Fantasy': Color(0xFF3F51B5),
    };
    return map[genre] ?? const Color(0xFF607D8B);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            // Poster
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
              child: Image.network(
                movie.imgUrl,
                width: 90,
                height: 130,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 90,
                  height: 130,
                  color: Colors.grey[800],
                  child: const Icon(
                    Icons.movie,
                    color: Colors.white30,
                    size: 36,
                  ),
                ),
              ),
            ),
            // Info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      movie.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    // Year & Genre
                    Row(
                      children: [
                        Text(
                          movie.year.toString(),
                          style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: _genreColor(movie.genre).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: _genreColor(movie.genre).withOpacity(0.5),
                            ),
                          ),
                          child: Text(
                            movie.genre,
                            style: TextStyle(
                              color: _genreColor(movie.genre),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Rating
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          color: Color(0xFFFFC107),
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          movie.rating.toString(),
                          style: const TextStyle(
                            color: Color(0xFFFFC107),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        const Text(
                          "/10",
                          style: TextStyle(color: Colors.white38, fontSize: 11),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Save button
                    GestureDetector(
                      onTap: onToggleSave,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: isSaved
                              ? const Color(0xFFE50914).withOpacity(0.15)
                              : Colors.white.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: isSaved
                                ? const Color(0xFFE50914).withOpacity(0.6)
                                : Colors.white24,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              isSaved
                                  ? Icons.bookmark_rounded
                                  : Icons.bookmark_add_outlined,
                              color: isSaved
                                  ? const Color(0xFFE50914)
                                  : Colors.white60,
                              size: 14,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              isSaved ? "Tersimpan" : "Tambahkan ke Daftar",
                              style: TextStyle(
                                color: isSaved
                                    ? const Color(0xFFE50914)
                                    : Colors.white60,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
