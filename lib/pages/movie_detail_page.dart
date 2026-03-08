import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/movie_model.dart';
import '../models/watchlist_model.dart';
import 'watchlist_page.dart';

class MovieDetailPage extends StatefulWidget {
  final MovieModel movie;

  const MovieDetailPage({super.key, required this.movie});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Tidak bisa membuka halaman.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.bookmark),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const WatchlistPage()),
                  );
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
                      color: Colors.red,
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
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Poster film
            Image.network(
              movie.imgUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Poster kecil + Info
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Poster kecil rounded
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          movie.imgUrl,
                          width: 90,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 14),

                      // Judul, tahun, genre, rating
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "${movie.year} • ${movie.genre}",
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "${movie.rating}/10",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 24),

                  // Sutradara
                  const Text(
                    "Sutradara",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(movie.director),
                  const SizedBox(height: 12),

                  // Pemeran
                  const Text(
                    "Pemeran",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(movie.casts.join(", ")),
                  const SizedBox(height: 12),

                  // Sinopsis
                  const Text(
                    "Sinopsis",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(movie.synopsis, style: const TextStyle(height: 1.6)),

                  const SizedBox(height: 16),

                  const SizedBox(height: 16),

                  // Tombol watchlist
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          WatchlistModel.toggleSave(movie);
                        });
                      },
                      icon: Icon(
                        WatchlistModel.isSaved(movie)
                            ? Icons.bookmark
                            : Icons.bookmark_add_outlined,
                      ),
                      label: Text(
                        WatchlistModel.isSaved(movie)
                            ? "Tersimpan"
                            : "Tambahkan ke Daftar",
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: WatchlistModel.isSaved(movie)
                            ? Colors.red
                            : Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Tombol Wikipedia
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () => _launchUrl(movie.movieUrl),
                      icon: const Icon(Icons.open_in_browser),
                      label: const Text("Buka di Wikipedia"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
