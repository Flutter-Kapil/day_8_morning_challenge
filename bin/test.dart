import 'main.dart';
import "package:test/test.dart";

void main() {
  test("Size of the Board created using createBoard()", () {
    expect(createBoard().length, 3);
    expect(createBoard()[0].length, 3);
    expect(createBoard()[1].length, 3);
    expect(createBoard()[2].length, 3);
  });

  test("Checking winner function", () {
    String X = 'X';
    List<List<String>> board1 = [
      ['X', 'O', ''],
      ['X', 'O', ''],
      ['X', 'O', ''],
    ];
    List<List<String>> board2 = [
      ['X', 'O', ''],
      ['O', 'X', ''],
      ['X', 'O', ''],
    ];
    expect(winner(board1, X), true);
    expect(winner(board2, X), false);
  });
}
