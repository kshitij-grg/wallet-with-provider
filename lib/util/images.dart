const basePath = 'assets/images/';

final imageBuilding = _getImagePath('office-building.jpg');
final imageLogo = _getImagePath('logo.png');
final imageLogoWhite = _getImagePath('logo-white.png');

String _getImagePath(String name) {
  return basePath + name;
}
