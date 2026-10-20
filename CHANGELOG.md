# Changelog

## [0.1.0-alpha.1] - 2026-10-20

**Alpha** : première version autonome (projet séparé du classeur Excel de suivi). Elle fonctionne sur les documents de test
mais n'a pas encore servi en vrai : vérifie les chiffres, garde une copie de tes PDF et de `fluxio.db`.

- Lecture de PDF : Z de caisse (journalier ou cumulé), factures fournisseurs (texte ; scans en saisie manuelle),
  relevés bancaires Caisse d'Épargne (4 comptes, soldes contrôlés), factures de commissions FDJ,
  relevés des opérations FDJ (grattage et tirage, livrets facturés).
- Écran de validation modifiable, PDF à côté (zoom, glisser). Dates affichées et saisies en JJ/MM/AAAA.
- Rapprochements : factures ↔ relevé bancaire ; caisse (Z) ↔ banque (CB jour par jour, espèces) avec validation
  ligne par ligne et lignes en attente reprises à la passe suivante ; dépôts d'espèces saisis ↔ banque
  (délai de crédit réglable) ; FDJ de la semaine (total à virer, prélèvement du mercredi).
- Base SQLite locale (`%APPDATA%\Fluxio\fluxio.db`), sans doublon (empreinte du PDF).
- Langues : français et anglais (réglage « Langue », appliquée au prochain lancement ; `FLUXIO_LANG=fr|en` la force). Textes du code en français
  (clé), traductions dans `src/lang/en.json` ; un test vérifie qu'aucun texte n'est oublié.
- Statistiques : ventes par groupe et par famille (par mois, depuis les Z), FDJ par semaine et par jeu (ventes, lots, commissions,
  taux de commission, retour aux joueurs), dépenses par fournisseur, banque par mois ; exercice en cours / précédent / tout ; export CSV.
- Réglages de la société : raison sociale, forme juridique, SIRET, nom dans les libellés bancaires, début de l'exercice
  comptable (fin calculée). Plus aucun nom de société écrit dans le code ; sans réglage, règles génériques de lecture.
- Scripts Windows : tests, compilation (PyInstaller), bac à sable, livrable zip. Synchronisation vers la prod et releases
  GitHub : `Codage\scripts\fluxio\` (comme `Codage\scripts\antrenamer\`).
