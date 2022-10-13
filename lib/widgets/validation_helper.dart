String? validateEmail(String? value) {
  const String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  final RegExp regex = RegExp(pattern);
  if (value == null || !regex.hasMatch(value)) {
    return 'Please provide a valid email.';
  } else {
    return null;
  }
}

String? validatePassword(String? value) {
  if (value!.length < 8) {
    return 'Password must at least be 8 characters';
  }
  if (value.isEmpty) {
    return 'Invalid password';
  }
  return null;
}
