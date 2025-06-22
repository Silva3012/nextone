class NextoneValidator {
  static String? validateEmail(String? value) {
    final email = value?.trim();
    if (email == null || email.isEmpty) return 'Email is required';

    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email) ? null : 'Enter a valid email';
  }

  static String? validatePassword(String? value) {
    final password = value?.trim();
    if (password == null || password.isEmpty) return 'Password is required';
    if (password.length < 6) return 'Password must be at least 6 characters';
    return null;
  }
}
