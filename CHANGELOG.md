# Changelog

## [Unreleased]

## [0.1.0-alpha.21] - 2026-11-20

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Lancement : la fenêtre de Fluxio prend le focus et passe devant les autres une fois chargée, même si vous avez cliqué ailleurs pendant l'écran de chargement (avant, elle pouvait s'ouvrir derrière, avec seulement l'icône qui clignotait dans la barre des tâches). Windows interdit à une application de voler le focus : la fenêtre est brièvement placée « toujours au-dessus » puis remise normalement, et activée.
## [0.1.0-alpha.20] - 2026-11-20

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Réglages : nouveau réglage « Séparateur des exports CSV » : « Demander à chaque export » (comportement de l'alpha.19, par défaut), « Toujours la virgule » ou « Toujours le point-virgule » (plus aucune question à l'export).
## [0.1.0-alpha.19] - 2026-11-20

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Export CSV : Fluxio demande le séparateur de colonnes à chaque export (tableaux et journaux pour le comptable) : virgule (norme RFC 4180, nombres avec le point, proposée par défaut) ou point-virgule (Excel en français, nombres avec la virgule décimale pour qu'Excel les reconnaisse comme des nombres). Le dernier choix est proposé la fois suivante ; « Annuler » interrompt l'export.
## [0.1.0-alpha.18] - 2026-11-20

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Correction : les exports CSV ouverts dans Excel affichaient des caractères étranges (« MÃ©tropole » au lieu de « Métropole ») : le fichier est maintenant écrit en UTF-8 avec marque BOM, que reconnaît Excel (les autres outils la lisent aussi sans problème). Concerne tous les exports de tableaux et les journaux pour le comptable.
## [0.1.0-alpha.17] - 2026-11-19

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Liste de gauche : une case « Seulement les non validés » (décochée, tous les fichiers ; cochée, seulement ceux pas encore enregistrés dans la base) et un bouton « Masquer / Afficher les « Information » » (courriers, contrats, bordereaux… lus mais mis de côté). Les deux se combinent ; rien n'est retiré de la liste, seul l'affichage change, et la liste mémorisée pour le prochain lancement n'est pas modifiée.
## [0.1.0-alpha.16] - 2026-11-19

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Ajout d'un PDF déjà présent dans la liste : le message dit maintenant avec quel fichier il a le même contenu (« Déjà dans la liste : x.pdf (même contenu que y.pdf) ») et sélectionne ce fichier. Deux PDF au contenu strictement identique ne sont comptés qu'une fois, même sous des noms différents.
- Bouton « Quitter » à l'extrémité droite de la barre de menu (en plus de Fichier → Quitter).
- Jeu de test : les PDF `e_timbres_avril` et `e_amendes_avril` étaient identiques octet pour octet ; ils sont maintenant distincts.
## [0.1.0-alpha.15] - 2026-11-19

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Correction : « Supprimer de la base… » (clic droit ou menu Fichier) et la suppression dans « Documents enregistrés » sortent aussi le document de la liste de gauche (avant, il y restait, seule la coche ✔ disparaissait). Un document qui n'est pas dans la base (information, erreur, pas encore validé) est simplement retiré de la liste, sans message d'erreur.
## [0.1.0-alpha.14] - 2026-11-19

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Les documents ajoutés à la liste de gauche mais pas encore validés sont retrouvés au lancement suivant (inutile de les réimporter) : la liste est mémorisée dans la base à chaque ajout, retrait, renommage, validation et à la fermeture ; un fichier déplacé ou supprimé entre-temps est simplement ignoré. Une fois validé, un document n'est plus dans la liste d'attente (il se retrouve dans l'Historique).

## [0.1.0-alpha.13] - 2026-11-19

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Correction : après « Retirer de la liste », « Supprimer de la base… » (clic droit), la suppression d'un ou de tous les documents (Documents enregistrés) ou une restauration, la fenêtre se met à jour : liste, formulaire affiché, PDF (fermé quand la liste est vide) et écran de synthèse ouvert (statistiques, historique, comptes, trésorerie, échéancier, pointage, tableau de bord, rapprochements) sont recalculés au lieu de garder les anciennes données.

## [0.1.0-alpha.12] - 2026-11-19

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Correction : devant un tableau d'amortissement de prêt, le bouton « Valider et enregistrer » (et « Lire ce document comme ») n'apparaissait pas : le prêt ne pouvait pas être enregistré dans l'échéancier.

## [0.1.0-alpha.11] - 2026-11-19

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Outils de test : la suite de documents fictifs (`.docs_test/suite_fictive`, `scripts/windows/suite-test.ps1`) passe de 53 à 125 documents + 36 factures électroniques : relevés FDJ (grattage et tirage) et factures de commissions sur deux semaines, bulletin Douane d'avril, relevé bancaire avec comptes FDJ et PMU, un Z par jour en mars 2025 et mars 2026, et un `LISEZ-MOI.txt` qui dit quel dossier éprouve quel écran. Le prélèvement FDJ du relevé de mai correspond à la première semaine FDJ.
- OCR : la reconnaissance des scans ne plante plus (violation d'accès) quand elle est lancée hors de l'application, par exemple par les scripts de test.

## [0.1.0-alpha.10] - 2026-11-19

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Installateur Windows `Fluxio-<version>-win64-setup.exe` (Inno Setup, `installer/fluxio.iss`) en plus du zip portable : installation par utilisateur sans droits administrateur, raccourcis, mise à jour par-dessus, désinstallation propre ; les données (`%APPDATA%\Fluxio`) ne sont jamais touchées. `package-win.ps1` le produit (`-SkipInstaller` pour s'en passer) et la publication de la release le joint avec le zip.
- Reconnaissance du type de document par scores (`reconnaissance.py`) au lieu d'une suite de tests sur des titres exacts : chaque type cherche des indices (titres, soldes, TTC, échéance…), le meilleur score l'emporte, et un document douteux est signalé « incertain » avec les indices trouvés (lecture « facture » conservée, « Lire comme… » pour corriger). Les types déjà reconnus le sont à l'identique.
- Documents reconnus mais sans rien à enregistrer, mis de côté avec un message (« Lire comme… » permet de les forcer) : bordereaux de livraison, de crédit et de rappel de la presse, relevés de presse du dépositaire, relevés de compte fournisseur, récapitulatifs de frais d'encaissement par carte, contrats et avenants, courriers. Ils étaient lus comme des factures vides.
- Détection d'un XML de facture électronique (Factur-X, ZUGFeRD, UBL, CII) embarqué dans le PDF, et d'un PDF dont le texte est trop pauvre pour être lu (passage par l'OCR). 
- Factures électroniques : le XML embarqué dans le PDF (Factur-X, ZUGFeRD) est lu pour remplir la facture (fournisseur, numéro, dates, échéance, TTC / HT / TVA, mode de règlement, acompte et reste à payer, avoir en négatif), sans deviner dans le texte ; il est vérifié (HT + TVA = TTC, somme des lignes) et comparé au texte visible du PDF (alerte si le TTC diffère). Quand le XML n'a pas l'échéance (profil MINIMUM), elle est reprise du texte et signalée. CII et UBL (Invoice / CreditNote) sont lus aussi (`lecteur_facture_xml.py`) ; les XML piégés (DTD, entités) sont refusés.
- Facture avec acompte (facture électronique) : le prévisionnel de trésorerie, l'alerte « factures échues » et le rapprochement bancaire utilisent le reste à payer, pas le TTC total (une facture soldée par l'acompte ne figure plus dans les sorties). Si le TTC est corrigé à la main dans le formulaire, le reste à payer suit.
- Lecture du texte des factures sans XML : fournisseur d'après la raison sociale imprimée (forme juridique, avant le bloc « Adressé à » ; la raison sociale des réglages n'est jamais prise pour un fournisseur), échéance imprimée (« Échéance : », « à régler avant le », « Prélèvement le ») ou calculée d'après les conditions de paiement (« 45 jours fin de mois », « à 30 jours date de facture », « sous 8 jours », « à réception »), mode de règlement (virement, chèque, LCR, prélèvement, espèces, payée par carte), avoir enregistré en négatif avec son propre numéro. Un taux de TVA (« Montant TTC 5,50 % ») n'est plus pris pour un montant.
- Factures et avoirs du distributeur de presse (BDP : « Facture FRP… », « Avoir ARP… ») : lecteur dédié (numéro, date, TTC, HT, TVA, règlement en une ou plusieurs échéances, contrôles de cohérence). Leur montant était faux (un taux de TVA) avant.
- Prêts : le tableau d'amortissement de la banque (achat de la boutique, matériel…) est reconnu (type « Prêt ») et lu : capital, taux, durée, différé, assurance, jour de prélèvement, première mensualité normale et mensualité pendant le différé, avec contrôle ligne par ligne et du capital restant dû. Valider crée l'emprunt dans l'échéancier (assurance, mensualités du différé, mensualités normales ; remplace une validation précédente) pour le pointage avec les prélèvements de la banque.
- Z de caisse avec un manque ou un excédent : l'écart n'est plus faussé par la lecture « quantité collée au montant » (un manque de 18,50 € s'affichait comme un excédent de plusieurs centaines de milliers d'euros). Un document court mais lisible n'est plus envoyé à l'OCR (et sans OCR le texte est gardé). Le relevé Caisse d'Épargne indique sa banque.
- Fenêtre : elle tient sur les petits écrans (largeur minimale 1 609 px → environ 710 px ; taille adaptée à l'écran disponible).
- Outils de développement : `scripts/generer_suite_test.py` (53 documents fictifs couvrant les cas de Fluxio : Z, relevés Banque Populaire / Caisse d'Épargne / Nickel / banque inconnue, LCR, frais de banque, prêt, fournisseurs, presse, factures électroniques, contrat, courrier, scan, fichiers cassés) et `scripts/evaluer_suite.py` (les fait lire par Fluxio et compare à l'attendu) ;  `scripts/evaluer_corpus.py` (justesse du type et des champs sur un dossier de PDF, comparaison avant / après) et `scripts/generer_factures_test.py` (factures électroniques fictives avec valeurs attendues).

## [0.1.0-alpha.9] - 2026-10-30

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Factures Orange (Livebox Pro, mobiles) : fournisseur, numéro, date, échéance du prélèvement, TTC, HT et TVA lus (les libellés et leurs valeurs sont séparés dans le texte du PDF). Elles n'étaient pas décodées avant la refonte du code non plus : ce n'est pas une régression.
- Scripts Windows (`test`, `build`, `run-sandbox`) : choix automatique d'un Python qui a PySide6 et pypdf (`FLUXIO_PYTHON`, puis `py -3.12`, `py -3`, `python`), au lieu du premier `python` du PATH (depuis Git Bash c'était celui de MSYS2, sans les modules).

## [0.1.0-alpha.8] - 2026-10-30

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Qualité du code (deuxième passe, sans changement de comportement : 149 documents de test relus à l'identique, prévisionnel identique) : une seule version des outils communs (`formats.norm`, `jour`, `milliers`, `mois_numero`) au lieu de copies dans plusieurs modules ; regroupement des familles du Z (`familles.py`) et TVA par mois (`tva.py`) sortis des lecteurs de PDF ; les plus longues fonctions (lecture des factures et des Z, enregistrement d'un document, prévisionnel) découpées en petites fonctions ; `fluxio.py` (2 800 lignes) découpé en `ui_formulaires.py`, `ui_rapprochements.py`, `ui_vues.py`, `ui_dialogues.py` ; test d'architecture (pas de cycle d'imports, métier indépendant de l'interface).

## [0.1.0-alpha.7] - 2026-10-30

**Alpha** : toujours pas éprouvée en conditions réelles ; vérifiez les chiffres.

- Écran de démarrage : la version affichée vient toujours du fichier `VERSION` (dessinée à l'exécution sur l'écran Qt, et image de PyInstaller régénérée à chaque compilation).

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
