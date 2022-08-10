import 'package:api_demo/test_tut/email_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Validate All Checks", () {
    test("Validate Empty Check", () {
      // Arrange & Act
      final emailResult = EmailController().validateEmail("");

      // Assert
      expect(emailResult, "Required Field");
    });

    test("Entered Email is Valid", () {
      // Arrange & Act
      final emailResult = EmailController().validateEmail("abc@gmail.com");

      // Assert
      expect(emailResult, null);
    });
  });
}
