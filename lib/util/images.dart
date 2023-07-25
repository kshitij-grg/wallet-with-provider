const basePath = 'assets/images/';

final imageLogo = _getImagePath('logo.png');
final imageLogoWhite = _getImagePath('logo-white.png');

String _getImagePath(String name) {
  return basePath + name;
}
