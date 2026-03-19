abstract class IAiContentService {
  Future<String> generateBiography({
    required String name,
    required String location,
    required String genre,
  });
}
