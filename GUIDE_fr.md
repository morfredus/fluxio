# Guide d'utilisation de Fluxio

*(Version anglaise : [GUIDE.md](GUIDE.md).)*

Fluxio lit vos PDF (tickets Z, factures, relevés bancaires, états FDJ…), vous montre ce qu'il a compris à côté du document, puis rapproche tout cela de votre banque. **Version alpha** : c'est une aide à la gestion, pas votre comptabilité. Vérifiez les chiffres et gardez vos PDF et vos sauvegardes.

Les menus sont écrits en gras, par exemple **Réglages → Licence…**.

## 1. Démarrer en 6 étapes

1. **Installez** Fluxio (`…-setup.exe`, ou le zip portable à décompresser). Windows SmartScreen peut avertir au premier lancement, car le programme n'est pas signé : « Informations complémentaires », puis « Exécuter quand même ».
2. **Licence.** Au premier lancement, Fluxio propose d'installer votre fichier de licence (commerce) ou de déclarer un usage non commercial. Voir la section 7.
3. **Renseignez votre société** dans **Réglages → Société, exercice, langue et exports CSV…** : raison sociale, SIRET, nom tel qu'il apparaît sur vos relevés, début d'exercice.
4. **Ajoutez des PDF** : bouton **Ajouter des PDF…** (menu **Fichier**, Ctrl+O) ou glisser-déposer dans la liste de gauche.
5. **Contrôlez et validez** : cliquez un document, comparez les champs à droite avec le PDF, corrigez si besoin, puis **Valider et enregistrer**.
6. **Rapprochez** (menu **Rapprochements**) et consultez le **Tableau de bord** (menu **Trésorerie**).

Commencez par quelques tickets Z et un relevé bancaire : les rapprochements n'ont de sens que lorsque les deux côtés sont validés.

## 2. L'écran principal

À gauche, la **liste des documents** ; au centre, le PDF ; à droite, les champs lus.

- **Doublons.** Un PDF au contenu identique à un document déjà présent (dans la liste ou enregistré) est refusé, avec le nom du fichier d'origine.
- **Liste conservée.** Les documents ajoutés mais pas encore validés reviennent au prochain lancement.
- **Filtres.** La case **Seulement les non validés** cache ce qui est déjà enregistré. Le bouton **Masquer les « Information »** met de côté les documents sans écriture comptable (courriers, contrats, bordereaux). Seul l'affichage change : rien n'est supprimé.
- **Lire ce document comme :** si Fluxio hésite ou se trompe sur le type d'un document, choisissez-le vous-même. Cette commande n'apparaît que devant un document.
- **Clic droit sur un document :** renommer le fichier, changer son **statut comptable**, **Retirer de la liste** ou **Supprimer de la base…**.

**Retirer de la liste** n'efface rien en base. **Supprimer de la base…** supprime définitivement le document, ses lignes lues et ses rapprochements : à utiliser en connaissance de cause.

## 3. Les types de documents

| Document | Ce que Fluxio en tire |
|---|---|
| Ticket Z (jour ou période) | Chiffre d'affaires par famille, TVA par taux, ventilation des encaissements, écart de caisse |
| Facture fournisseur (PDF texte ou électronique) | Tiers, numéro, dates, HT, TVA, TTC, échéance ; les avoirs sont en négatif |
| Relevé bancaire | Mouvements, soldes, contrôle de la chaîne de soldes d'un relevé à l'autre |
| État / facture FDJ | Solde de la semaine à virer ou prélevé |
| Tableau d'amortissement d'un prêt | Échéances (avec différé et assurance), ajoutées à l'échéancier |
| « Information » | Aucune écriture, mais le document est gardé dans l'historique |

Un document scanné sans texte est lu par la reconnaissance de caractères de Windows, sur votre ordinateur. Si un document n'est pas reconnu, il apparaît comme « incertain » : utilisez **Lire ce document comme :**.

## 4. Rapprocher et pointer

- **Rapprochements → Caisse (Z) ↔ banque** : les totaux carte des tickets Z contre les remises créditées par la banque (les jours consécutifs, week-ends et jours fériés compris, sont regroupés), et les espèces contre les dépôts.
- **Rapprochements → Factures ↔ relevés** : chaque débit bancaire est cherché parmi vos factures. Concordance stricte du montant et de la date : rapproché. Concordance du montant seul : « probable », à confirmer. Un clic droit permet de confirmer, de défaire ou de rapprocher à la main.
- **Rapprochements → Pointage de la banque (reste à pointer)** : liste ce qui n'est justifié par aucune pièce (frais de banque, impôts…). Un clic droit crée une règle de classement (nature, activité, fonds de tiers) réutilisée ensuite.
- **Caisse et FDJ → Mes dépôts d'espèces** : suivi de vos remises d'espèces jusqu'à leur crédit en banque (7 jours de délai toléré par défaut).
- **Caisse et FDJ → FDJ de la semaine (à virer / prélevé)** : le solde net de la semaine contre le prélèvement de la FDJ.

Dans chaque écran, des cases à cocher filtrent par statut et indiquent le nombre de lignes. Les lignes masquées sont absentes des exports et des impressions.

## 5. Trésorerie et statistiques

- **Trésorerie → Tableau de bord** : situation du jour, sorties à venir, disponible après engagements et alertes (jours sans Z, ruptures de numérotation ou de soldes, factures échues, semaines FDJ sans relevé…).
- **Trésorerie → Suivi par compte bancaire** et **Trésorerie et prévisionnel**.
- **Trésorerie → Échéancier (emprunt, loyers, locations…)** : engagements sans facture mensuelle, prêts avec différé, détection des prélèvements récurrents. La TVA à payer y est ajoutée si vous avez indiqué un régime dans les réglages.
- **Statistiques** : ventes par famille et par mois (comparées à l'an passé), FDJ, achats par fournisseur, TVA, rentabilité.
- **Historique** : recherche dans tous les exercices (texte, tiers, date, montant ou fourchette) ; un double-clic ouvre le PDF.

## 6. Exports, sauvegardes, réglages

**Exports.** Chaque écran a **Exporter en CSV…** et **Imprimer…** (aussi en PDF, A4 paysage, avec votre en-tête, la date et les filtres actifs). **Fichier → Export pour le comptable…** produit les journaux de ventes, d'achats, de banque et le rapport des opérations sans justificatif. Les CSV sont en UTF-8 avec BOM (les accents s'affichent bien dans Excel). Le séparateur est la virgule (standard) ou le point-virgule (Excel en français, avec virgule décimale) : Fluxio le demande à l'export, ou vous le fixez dans les réglages.

**Statut comptable** (clic droit) : *À envoyer*, *Envoyé au comptable*, *Comptabilisé*.

**Sauvegardes** : **Fichier → Sauvegarde et restauration…**.
- Une copie automatique est faite à la fermeture, au plus une par jour, si la base contient des documents. Les 10 dernières sont gardées dans `%APPDATA%\Fluxio\sauvegardes\`. Désactivable dans les réglages.
- Vous pouvez aussi faire une sauvegarde complète ou celle d'un seul exercice.
- Avant toute restauration, Fluxio sauvegarde d'abord l'état actuel.

**Réglages** (**Réglages → Société, exercice, langue et exports CSV…**) : société, SIRET, nom bancaire, début d'exercice, langue (au prochain lancement), régime et jour de TVA, jours de fermeture hebdomadaire (non signalés comme « sans Z »), sauvegarde automatique, séparateur CSV.

**Où sont mes données ?** Dans `%APPDATA%\Fluxio\fluxio.db`, hors du dossier du programme : une mise à jour ou une désinstallation n'y touche pas. **Réglages → Ouvrir le dossier des données** l'ouvre. Rien n'est envoyé sur Internet.

## 7. Licence

L'usage non commercial (particulier, association, étude…) est libre. L'usage dans un commerce ou une entreprise demande un **fichier de licence** nominatif, gratuit, délivré par l'auteur à une sélection de commerces. Pour le demander, ouvrez **Réglages → Licence…**, lien « Demander une licence commerciale », puis, une fois le fichier reçu, **Installer un fichier de licence…** après avoir accepté les conditions ([conditions](LICENCE-COMMERCIALE_fr.md)).

Une licence absente ou expirée **ne bloque rien et ne touche à aucune donnée** : Fluxio affiche seulement « Usage non commercial » dans la barre d'état et sur les PDF et impressions. Il prévient 30 jours avant l'échéance.

## 8. Problèmes fréquents

- **« Déjà dans la liste »** : le contenu du PDF est identique à un autre document ; le message indique lequel.
- **Un document est mal lu** : corrigez les champs avant de valider, ou utilisez **Lire ce document comme :**. Pour signaler le cas, utilisez le modèle « Document mal lu » des Issues, **sans joindre de PDF réel** (masquez noms, IBAN et montants).
- **Excel affiche tout dans une colonne** : refaites l'export avec le point-virgule.
- **Un chiffre semble faux** : Fluxio contrôle que HT + TVA = TTC et que les soldes s'enchaînent, et le signale ; la vérification finale reste la vôtre.
- **Langue** : à choisir dans les réglages (appliquée au prochain lancement) ; `FLUXIO_LANG=fr` ou `en` la force.
- **Essayer sans risque** : `FLUXIO_ENV=sandbox` utilise une base séparée (`fluxio_sandbox.db`) ; `FLUXIO_DB` impose le chemin d'une base.
