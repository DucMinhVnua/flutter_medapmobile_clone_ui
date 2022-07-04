String convertPassword ({String? password}) {
  return List.filled(password!.length, '*').join('');
}