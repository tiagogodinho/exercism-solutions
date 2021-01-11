class Diamond {
  List<String> rows(String input) {
    int start = 'A'.codeUnitAt(0);
    int end = input.codeUnitAt(0);
    int diamondSize = (end - start) + 1;
    int side = diamondSize * 2 - 1;

    List<String> result = [];

    for (int i = 0; i < diamondSize; i++) {
      String letter = String.fromCharCode(end - i);
      String row = ''.padRight(side, ' ');

      if (i == 0) {
        result.add(row
            .replaceRange(0, 1, letter)
            .replaceRange(row.length - 1, row.length, letter));
      } else {
        row = row
            .replaceRange(i, i, letter)
            .replaceRange(row.length - (i + 1), row.length - (i - 1), letter);

        result.insert(0, row);
        result.add(row);
      }
    }

    return result;
  }
}
