# Fluxio

**Statut : alpha** · Windows 64 bits · français et anglais

Fluxio est une application Windows autonome pour les petits commerces : bar, tabac, FDJ, PMU, hôtel. On lui donne les PDF qu'on a déjà : Z de caisse, factures fournisseurs, relevés bancaires, relevés FDJ. Elle les lit, montre ce qu'elle a compris à côté du PDF d'origine, et on corrige avant de valider.

Une fois les documents validés, elle les rapproche : factures et débits bancaires, CB encaissées et remises CB créditées par la banque, dépôts d'espèces et dépôts en banque, règlement FDJ de la semaine et prélèvement du mercredi. Elle calcule aussi des statistiques : ventes par famille et par mois (avec comparaison N / N-1), résultats FDJ par jeu, dépenses par fournisseur, mouvements bancaires, TVA et rentabilité. Elle suit les engagements (emprunts avec différé et assurance, locations de matériel, loyers), propose une trésorerie prévisionnelle et prépare l'export pour le comptable.

Tout reste sur votre ordinateur, dans une base SQLite locale : pas de compte, pas de cloud.

## Téléchargement

Récupérez la dernière version sur la page [Releases](../../releases) : soit **`Fluxio-<version>-win64-setup.exe`** (installateur, par utilisateur, sans droits administrateur), soit **`Fluxio-<version>-win64-portable.zip`** (dézippez où vous voulez et lancez `Fluxio.exe`, aucune installation). Vos données restent dans `%APPDATA%\Fluxio` dans les deux cas et ne sont jamais supprimées par une mise à jour ou une désinstallation.

- Le programme n'est **pas signé** : SmartScreen peut avertir au premier lancement.
- Vos données sont dans `%APPDATA%\Fluxio\fluxio.db`, hors du dossier du programme : une mise à jour n'y touche jamais. Pour sauvegarder, copiez ce fichier.
- Les PDF ajoutés à la liste mais pas encore validés réapparaissent au lancement suivant : inutile de les réimporter.
- Les exports CSV demandent le séparateur de colonnes : virgule (norme) ou point-virgule (Excel en français) ; ce choix peut aussi être fixé dans les réglages.
- La liste de gauche se filtre : case « Seulement les non validés » et bouton pour masquer ou afficher les documents « Information ».
- La langue (français / anglais) se choisit dans les réglages et s'applique au prochain lancement.

## Licence

Fluxio est sous licence **[PolyForm Noncommercial 1.0.0](LICENSE)** : usage non commercial autorisé (personnel, étude, recherche, associations, écoles...). **L'usage commercial (un commerce, une entreprise) exige une licence commerciale** délivrée par l'auteur sous la forme d'un fichier : voir [LICENCE-COMMERCIALE_fr.md](LICENCE-COMMERCIALE_fr.md) (gratuite pour l'instant, panel choisi). Au lancement, Fluxio demande d'installer ce fichier ou de déclarer un usage non commercial ; une licence absente ou expirée ne bloque rien et ne fait perdre aucune donnée. Les composants tiers gardent leurs propres licences : voir [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

## Code source

Le code source n'est pas publié. Il est **disponible sur demande** pour une évaluation non commerciale : ouvrez une issue avec le modèle « Demande de code source ».

## Retours

Utilisez les modèles d'issues : bug, document mal lu, demande de fonctionnalité, documentation, question. **Ne joignez jamais de vrais PDF ni de vraie base** : masquez noms, IBAN et montants.
