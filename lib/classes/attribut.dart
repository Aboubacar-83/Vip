class Tables {
  final String marque;
  final double quantite;
  final double prixUnitaire;
  final String classe;
  final double prixDeVente;
  final String date;
  Tables(
    this.marque,
    this.quantite,
    this.prixUnitaire,
    this.classe,
    this.prixDeVente,
    this.date,
  );
  Tables buildRow(List<String> cells) =>
      Tables(marque, quantite, prixUnitaire, classe, prixDeVente, date);
}
