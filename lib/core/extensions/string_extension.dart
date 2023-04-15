extension StringExtension on String {
  String setEpisodeNumber() {
    String temp = this;
    temp[1] == '0' ? temp = temp.replaceFirst('0', '') : temp;
    temp[temp.length - 2] == '0' ? temp = temp.replaceFirst('0', '') : temp;
    temp = temp.replaceAll('S', 'Season ').replaceAll('E', ' Episode ');
    return temp;
  }

  String setEpisodeNumberJustNumber() {
    String temp = this;
    temp[1] == '0' ? temp = temp.replaceFirst('0', '') : temp;
    temp[temp.length - 2] == '0' ? temp = temp.replaceFirst('0', '') : temp;
    return temp;
  }
}
