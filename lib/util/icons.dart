const basePath = 'assets/icons/';

final iconAdd = _getIconPath('add.svg');
final iconCart = _getIconPath('cart.svg');
final iconDone = _getIconPath('done.svg');
final iconEye = _getIconPath('eye.svg');
final iconEyeOff = _getIconPath('eye-off.svg');
final iconHome = _getIconPath('home.svg');
final iconSearch = _getIconPath('search.svg');
final iconUser = _getIconPath('user.svg');
final iconVideo = _getIconPath('video.svg');

String _getIconPath(String name) {
  return basePath + name;
}
