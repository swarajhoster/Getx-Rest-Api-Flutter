import 'package:api_demo/test_tut/maths_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Maths Utils - ", () {
    test("Check for two numbers addition", () {
      // Arrange
      var a = 1;
      var b = 2;

      // Act
      var addResult = add(a, b);

      // Assert
      expect(addResult, 3);
    });
    test("Check for two numbers subtraction", () {
      // Arrange
      var a = 9;
      var b = 6;

      // Act
      var subResult = sub(a, b);

      // Assert
      expect(subResult, 3);
    });

    test("Check for two numbers multiplication", () {
      // Arrange
      var a = 1;
      var b = 3;

      // Act
      var multiplyResult = multi(a, b);

      // Assert
      expect(multiplyResult, 3);
    });
    test("Check for two numbers division", () {
      // Arrange
      var a = 15;
      var b = 5;

      // Act
      var divideResult = divide(a, b);

      // Assert
      expect(divideResult, 3);
    });
  });
}
