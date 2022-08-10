class PasswordController {
  validatePassword(String password) {
    if (password.isEmpty) {
      return "Required Field";
    }

    if (password.length < 8) {
      return "Enter a password greater then 8 digits";
    }
  }
}
