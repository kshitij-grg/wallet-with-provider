const basePath = 'assets/lottie/';

final lottieLoading = _getLottiePath('loading.json');

String _getLottiePath(String name) {
  return basePath + name;
}
