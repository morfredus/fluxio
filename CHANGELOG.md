# Changelog

## [0.1.0-alpha.6] - 2026-10-30

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Écran de démarrage « Chargement de vos documents… / Loading your documents… » (logo, version) affiché dès le lancement de l'exécutable, avant même le démarrage du programme, et retiré quand la fenêtre est prête (`resources/splash.png`, généré par `scripts/faire_splash.py`). L'écran affiche ensuite une barre et un pourcentage de progression (base, vérification des documents, fenêtre, tableau de bord). Un second lancement pendant le chargement n'ouvre plus de deuxième fenêtre : il prévient que Fluxio est déjà ouvert.
- Filtres par cases à cocher sur les écrans de rapprochement (factures ↔ relevés : rapprochées / probables / non rapprochées ; caisse ↔ banque : validées / prêtes à valider / en attente ; FDJ de la semaine ; dépôts d'espèces ; pointage de la banque ; échéancier) avec le nombre de lignes de chaque état. Les lignes masquées ne sont ni exportées ni imprimées.

## [0.1.0-alpha.5] - 2026-10-30

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- **Échéancier** (Trésorerie → Échéancier) : engagements récurrents ou datés qui ne passent pas par une facture mensuelle : emprunt, loyer, **locations de matériel livrées avec leur échéancier**, salaires, cotisations, impôts, abonnements, échéanciers de fournisseurs. Assistant **emprunt avec différé** : échéances reportées au départ (totalement, ou avec une mensualité réduite) tandis que l'**assurance du prêt reste prélevée dès le départ**. Détection des prélèvements récurrents dans l'historique bancaire (à ajouter en un clic). Chaque échéance passée est pointée avec la banque (payée / en retard).
- **Prévisionnel de trésorerie** : intègre l'échéancier (sans doublon avec les factures et effets déjà connus), la TVA estimée à payer (régime mensuel ou trimestriel réglé dans Réglages) et affiche le **disponible après engagements à 30 jours**.
- **Pointage de la banque** (Rapprochements) : chaque opération est justifiée (facture rapprochée, échéancier, effet LCR, règlement FDJ, mouvement de caisse) ou classée par une **règle de catégorie** (nature, activité, fonds de tiers) ; le reste à pointer est listé, avec clic droit pour créer une règle ou ajouter l'opération à l'échéancier.
- **Tableau de bord** à l'ouverture : trésorerie, sorties à 7 et 30 jours, disponible après engagements, solde projeté, chiffre d'affaires comparé à l'année précédente, alertes, prochaines échéances, soldes par compte. **Contrôles d'exhaustivité** : jours sans Z (jours de fermeture réglables ou déduits), relevés bancaires manquants ou à la chaîne de soldes rompue, semaines FDJ manquantes, factures échues sans paiement, manques de caisse, opérations à pointer, documents pas encore envoyés au comptable.
- **TVA** : HT et TVA des factures (facultatifs, lus quand le PDF les donne), TVA par taux des Z de caisse ; onglet Statistiques « TVA » (collectée, déductible, à décaisser) ; les Z déjà enregistrés sont relus au démarrage pour en extraire la TVA.
- **Statistiques** : « CA mensuel (N / N-1) » et « Rentabilité par activité » (ventes des Z et charges payées affectées par règle).
- **Comptable** : statut par document (à envoyer / envoyé / comptabilisé), et menu Fichier → « Export pour le comptable… » (journaux de ventes, d'achats et de banque, opérations sans justificatif, en CSV RFC 4180).
- Structure du code : les éléments d'interface partagés sont dans `ui_commun.py`, les nouveaux écrans dans `ui_*.py`.
- Export et impression : trois boutons clairs (« Exporter en CSV… », « Exporter en PDF… », « Imprimer… » avec la boîte de dialogue d'impression de Windows) et mémorisation du dernier dossier utilisé pour les exports.

- Rapprochement factures ↔ relevés : clic droit sur une facture pour confirmer un rapprochement « probable », le rapprocher à la main avec un autre débit bancaire (liste triée par proximité du montant) ou le dé-rapprocher, avant d'enregistrer. Les décisions sont enregistrées et rejouées à la réouverture ; enregistrer plusieurs fois ne crée plus de doublons.

- Export des tableaux : boutons « Exporter en CSV… » et « Imprimer / PDF… » sur la trésorerie et le prévisionnel, le suivi par compte, les statistiques, l'historique, les rapprochements (caisse ↔ banque, factures ↔ relevés), les dépôts d'espèces et la FDJ de la semaine. CSV conforme à la RFC 4180 (virgule, guillemets, CRLF, UTF-8, dates AAAA-MM-JJ, nombres avec point décimal) ; PDF A4 paysage avec société et date d'édition. L'ancien export CSV à point-virgule des statistiques est remplacé.
- Écran adapté au contexte : « Lire ce document comme » et « Valider et enregistrer » n'apparaissent que devant un document, plus devant la trésorerie, les statistiques, etc.
- Icône : retour à l'icône de l'exécutable pour la barre des tâches (plus d'identité Windows explicite).

- Saisie des dates : 10012025, 100125, 10.01.2025, 10/01/25, 10-1-25… sont toutes comprises et remises en JJ/MM/AAAA dès qu'on quitte la zone (factures, effets LCR, bulletin Douane, dépôts d'espèces, historique, exercice des réglages) ; le mois du bulletin accepte 032026, 3/26… (stockage inchangé : AAAA-MM-JJ).

## [0.1.0-alpha.4] - 2026-10-29

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Qualité du code : formatage automatique (ruff, 150 colonnes, `pyproject.toml`), contrôles statiques sans avertissement, un seul lecteur de montants (`formats.montant`) au lieu de six copies, lecteur Nickel simplifié et testé, suppression du code mort.
- Au démarrage, tout ce qui est enregistré est disponible : les écrans Rapprochements (caisse ↔ banque, factures ↔ relevés, dépôts), FDJ de la semaine, suivi par compte, trésorerie et statistiques partent de TOUTE la base, sans recharger les PDF (les documents de la liste de travail gardent la priorité, avec leurs corrections). Les relevés enregistrent désormais leurs opérations complètes.
- Nouveau menu « Historique » : recherche dans toute l'activité enregistrée, quelle que soit l'année (texte, montant exact ou fourchette, jour ou période, nature : banque, factures, Z de caisse, FDJ, effets LCR, Douane, dépôts), somme des résultats, double-clic pour ouvrir le document. « Documents enregistrés » : bouton « Afficher la sélection dans la liste ».
- Icône : identité propre à Fluxio pour la barre des tâches de Windows (AppUserModelID) et icône .ico multi-tailles pour la fenêtre.
- Renommer le fichier d'un document depuis Fluxio (clic droit sur la liste ou menu Fichier) : nom proposé d'après la facture (montant corrigé, style « Fournisseur - 840,94.pdf » conservé), refus d'écraser un fichier existant, liste et base mises à jour. Le PDF affiché est désormais chargé en mémoire, donc le fichier n'est plus verrouillé par Fluxio.
- Factures relevés SED (règlement par LCR) : numéro, date, total TTC, échéance et total HT lus ; garde-fou général : alerte quand le montant noté à la fin du nom du fichier diffère du montant lu.
- Factures Keolis Bordeaux Métropole (TBM) : titres de transport vendus, commission du dépositaire (HT, TVA, TTC), net à payer prélevé et échéance ; contrôle ventes − commission = net. La commission retenue apparaît dans les statistiques « Recettes à notre crédit ».
- Facture : autocomplétion du champ Fournisseur avec les fournisseurs déjà enregistrés (n'importe quelle partie du nom, sans tenir compte de la casse, un seul nom par fournisseur).
- Pièces à notre crédit : les avis de virement (relais de colis Colis Privé) sont lus comme des encaissements et non comme des dépenses : exclus des dépenses par fournisseur et du prévisionnel de dépenses, rapprochés des virements reçus en banque, onglet Statistiques « Recettes à notre crédit », virements attendus dans le prévisionnel de trésorerie.

## [0.1.0-alpha.3] - 2026-10-20

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Factures Logista France : « Facture tabac » (livraisons au prix de vente, remise, net à payer, échéance sous 30 jours au plus tard) et « Facture e-recharge » (produits dématérialisés, échéance imprimée). Les livraisons de tabac facturées sont comparées au bulletin de la Douane dans les statistiques « Tabac (Douane) ».
- Bulletin mensuel de remises et aides tabac (Douane) : livraisons, remise brute et nette, retenues (licence, allocation viagère), soutiens forfaitaire et exceptionnel, recouvrement, date de mise en paiement. Validation modifiable, statistiques « Tabac (Douane) » (taux de remise, comparaison avec les ventes tabac des Z) et soutiens à recevoir / à acquitter dans le prévisionnel de trésorerie.

## [0.1.0-alpha.2] - 2026-10-20

**Alpha** : toujours pas éprouvée en conditions réelles. Relancez « Enregistrer de nouveau » sur les anciens relevés si besoin ; vérifiez les chiffres.

- Relevés Banque Populaire (comptes courant, FDJ, PMU) : lus avec soldes d'ouverture / clôture ; le sens débit / crédit, absent du texte du PDF, est déduit du libellé puis corrigé pour retomber sur les soldes (clic droit pour inverser une opération à la main). Virements American Express rattachés aux ventes du jour. Une banque inconnue passe par une lecture générique (« date, libellé, montant » + soldes) avec le même contrôle.
- Rapprochement CB : les remises regroupées (week-end, jours fériés) sont comparées au total des Z des jours concernés.
- Z de caisse « Fin de période » : dates lues (jour de début et de fin) ; au démarrage, les documents déjà enregistrés avec une ancienne lecture (Z sans dates, relevés sans soldes) sont relus depuis leur PDF.
- Facture de frais bancaires, relevés e-timbres / e-amendes : reconnus comme informations (rien à enregistrer).
- Z de caisse : le fonds de caisse (argent mis dans le tiroir) est pris en compte dans le contrôle et retiré des espèces comparées aux dépôts bancaires ; un écart reste signalé avec sa valeur (MANQUE ou EXCÉDENT en caisse, à expliquer) et alimente l'onglet Statistiques « Écarts de caisse » (par Z, avec totaux).
- Nouveaux documents lus : relevé de compte Nickel (opérations et soldes contrôlés), rapport d'activité Nickel (information, rien à enregistrer), relevé de lettres de change LCR (effets à payer, date de règlement). Les soldes des relevés sont enregistrés.
- « Lire ce document comme… » au-dessus du formulaire : si un document n'est pas reconnu (relevé de banque inconnu, etc.), on peut imposer son type ; lecture générique « date, libellé, montant » pour un relevé inconnu, à vérifier ligne à ligne.
- Menu Trésorerie : suivi par compte bancaire (soldes, mouvements par mois, opérations, soldes des relevés) et trésorerie avec prévisionnel semaine par semaine (engagé : effets LCR, factures non payées, prélèvements FDJ connus ; estimé : moyennes récentes d'encaissements CB/espèces et de prélèvement FDJ).
- Logo provisoire dans la barre de titre et sur l'exécutable (`resources/fluxio.png` et `fluxio.ico`, générés par `scripts/faire_logo.py` : remplacez ces deux fichiers pour changer de logo).
- Compilation : les DLL d'exécution Visual C++ sont copiées à la racine de `dist\Fluxio\_internal` (le programme tourne sans Visual C++ installé).
- Lecture des factures : référence (« Référence : … »), date en toutes lettres (« le 02 octobre 2022 »), règlement SEPA / « à réception » (échéance = date de facture), fournisseur proposé d'après le nom du fichier.

## [0.1.0-alpha.1] - 2026-10-20

**Alpha** : première version autonome (projet séparé du classeur Excel de suivi). Elle fonctionne sur les documents de test
mais n'a pas encore servi en vrai : vérifiez les chiffres, gardez une copie de vos PDF et de `fluxio.db`.

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
- Menus en cartouches pastel discrètes : Fichier / Caisse et FDJ (usage courant) / Rapprochements (mensuel) / Statistiques / Réglages ; le panneau de gauche ne garde que
  l'ajout de PDF et la liste.
- Retirer un document : « Retirer de la liste » (sans toucher à la base), « Supprimer de la base » (document et toutes ses données, y compris
  rapprochements liés) et la fenêtre « Documents enregistrés ». Un même PDF ne s'ajoute pas deux fois à la liste, le double-clic sur « Valider »
  ne valide plus le document suivant, et re-valider ne crée jamais de doublon (le bouton devient « Enregistrer de nouveau »).
- Statistiques : ventes par groupe et par famille (par mois, depuis les Z), FDJ par semaine et par jeu (ventes, lots, commissions,
  taux de commission, retour aux joueurs), dépenses par fournisseur, banque par mois ; exercice en cours / précédent / tout ; export CSV.
- Réglages de la société : raison sociale, forme juridique, SIRET, nom dans les libellés bancaires, début de l'exercice
  comptable (fin calculée). Plus aucun nom de société écrit dans le code ; sans réglage, règles génériques de lecture.
- OCR des PDF scannés (reconnaissance de texte intégrée à Windows, langue française de Windows requise) : les champs de la facture sont proposés, à vérifier ; sans OCR, saisie manuelle.
- Un document déjà validé se rouvre avec les valeurs saisies (facture, Z), plus avec la lecture automatique du PDF.
- Sauvegarde et restauration (Fichier → « Sauvegarde et restauration… ») : base complète, sauvegarde par exercice comptable (copie, sans rien
  supprimer : les statistiques restent complètes), import sans effacer ni dupliquer, restauration avec copie de sécurité, sauvegarde automatique
  à la fermeture (une par jour, 10 conservées).
- Scripts Windows : tests, compilation (PyInstaller), bac à sable, livrable zip. Synchronisation vers la prod et releases
  GitHub : `Codage\scripts\fluxio\` (comme `Codage\scripts\antrenamer\`).
