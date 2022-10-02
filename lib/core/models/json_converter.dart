DateTime? dateTimeFromIso(String? iso) {
  if (iso == null) {
    return null;
  }
  return DateTime.tryParse(iso);
}