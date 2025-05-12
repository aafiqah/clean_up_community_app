class ValidatorUtils {
  static String? validateEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return 'Please enter your email';
    }
    // Regex for email validation
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? pwd) {
    if (pwd == null || pwd.trim().isEmpty) {
      return 'Please enter your password';
    }
    if (pwd.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    if (!RegExp(r'[A-Z]').hasMatch(pwd)) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!RegExp(r'[a-z]').hasMatch(pwd)) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!RegExp(r'\d').hasMatch(pwd)) {
      return 'Password must contain at least one number';
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(pwd)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }
}
