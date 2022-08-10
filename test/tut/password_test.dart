import 'package:api_demo/test_tut/email_controller.dart';
import 'package:api_demo/test_tut/passoword_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Validate All Password Checks", () {
    test("Validate Empty Password Check", () {
      // Arrange & Act
      final passwordResult = PasswordController().validatePassword("");

      // Assert
      expect(passwordResult, "Required Field");
    });

    test("Entered Password is Greater then 8 digits", () {
      // Arrange & Act
      final passwordResult = PasswordController().validatePassword("password");

      // Assert
      expect(passwordResult, null);
    });
  });
}
