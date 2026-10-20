# Fluxio

**Statut : alpha** · Windows 64 bits · français et anglais

Fluxio est une application Windows autonome pour les petits commerces : bar, tabac, FDJ, PMU, hôtel. On lui donne les PDF qu'on a déjà : Z de caisse, factures fournisseurs, relevés bancaires, relevés FDJ. Elle les lit, montre ce qu'elle a compris à côté du PDF d'origine, et on corrige avant de valider.

Une fois les documents validés, elle les rapproche : factures et débits bancaires, CB encaissées et remises CB créditées par la banque, dépôts d'espèces et dépôts en banque, règlement FDJ de la semaine et prélèvement du mercredi. Elle calcule aussi des statistiques : ventes par famille et par mois, résultats FDJ par jeu, dépenses par fournisseur, mouvements bancaires.

Tout reste sur votre ordinateur, dans une base SQLite locale : pas de compte, pas de cloud.

## Téléchargement

Récupérez le dernier **`Fluxio-<version>-win64-portable.zip`** sur la page [Releases](../../releases), dézippez-le où vous voulez et lancez `Fluxio.exe`. Aucune installation.

- Le programme n'est **pas signé** : SmartScreen peut avertir au premier lancement.
- Vos données sont dans `%APPDATA%\Fluxio\fluxio.db`, hors du dossier du programme : une mise à jour n'y touche jamais. Pour sauvegarder, copiez ce fichier.
- La langue (français / anglais) se choisit dans les réglages et s'applique au prochain lancement.

## Licence

Fluxio est sous licence **[PolyForm Noncommercial 1.0.0](LICENSE)** : usage non commercial autorisé (personnel, étude, recherche, associations, écoles...). **L'usage commercial est interdit** sans licence séparée de l'auteur. Les composants tiers gardent leurs propres licences : voir [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

## Code source

Le code source n'est pas publié. Il est **disponible sur demande** pour une évaluation non commerciale : ouvrez une issue avec le modèle « Demande de code source ».

## Retours

Utilisez les modèles d'issues : bug, document mal lu, demande de fonctionnalité, documentation, question. **Ne joignez jamais de vrais PDF ni de vraie base** : masquez noms, IBAN et montants.
