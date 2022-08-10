class EmailController {
  validateEmail(String email) {
    if (email.isEmpty) {
      return "Required Field";
    }

    if (!email.contains("@") && !email.contains(".")) {
      return "Entered Email is Not Valid"; 
    }
  }
}
