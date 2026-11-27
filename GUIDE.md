# Fluxio user guide

*(French version: [GUIDE_fr.md](GUIDE_fr.md).)*

Fluxio reads your PDFs (Z reports, invoices, bank statements, lottery statements…), shows what it understood next to the document, then reconciles it all with your bank. **Alpha version**: it is a management aid, not your bookkeeping. Check the figures and keep your PDFs and backups.

Menus are written in bold, for example **Settings → License…**.

## 1. Getting started in 6 steps

1. **Install** Fluxio (`…-setup.exe`, or unzip the portable zip). Windows SmartScreen may warn on the first run because the program is not signed: "More info", then "Run anyway".
2. **License.** On the first run Fluxio offers to install your license file (shops) or to declare non-commercial use. See section 7.
3. **Fill in your company** in **Settings → Company, financial year, language and CSV exports…**: company name, SIRET, the name as it appears on your bank statements, start of the financial year.
4. **Add PDFs**: **Add PDFs…** (**File** menu, Ctrl+O) or drag and drop into the left-hand list.
5. **Check and validate**: click a document, compare the fields on the right with the PDF, correct if needed, then **Validate and save**.
6. **Reconcile** (**Reconciliations** menu) and open the **Dashboard** (**Cash** menu).

Start with a few Z reports and one bank statement: reconciliations only make sense once both sides are validated.

## 2. The main screen

On the left the **document list**, in the middle the PDF, on the right the fields that were read.

- **Duplicates.** A PDF whose content is identical to a document already there (in the list or saved) is refused, with the name of the original file.
- **List kept.** Documents added but not yet validated come back the next time you start Fluxio.
- **Filters.** The **Not yet validated only** check box hides what is already saved. The **Hide "Information" documents** button sets aside documents with no accounting entry (letters, contracts, delivery notes). Only the display changes: nothing is deleted.
- **Read this document as:** if Fluxio hesitates or gets a document type wrong, choose the type yourself. This command only appears in front of a document.
- **Right-click a document:** rename the file, change its **accounting status**, **Remove from the list** or **Delete from the database…**.

**Remove from the list** deletes nothing in the database. **Delete from the database…** permanently deletes the document, its lines and its reconciliations: use it knowingly.

## 3. Document types

| Document | What Fluxio takes from it |
|---|---|
| Z report (day or period) | Sales by family, VAT by rate, breakdown of takings, cash difference |
| Supplier invoice (text PDF or electronic) | Supplier, number, dates, net, VAT, gross, due date; credit notes are negative |
| Bank statement | Movements, balances, check that balances chain from one statement to the next |
| FDJ statement / invoice | The week's balance to transfer or debited |
| Loan repayment schedule | Instalments (with deferral and insurance), added to the schedule |
| "Information" | No entry, but the document is kept in the history |

A scanned document without text is read by Windows character recognition, on your computer. A document that is not recognised appears as "uncertain": use **Read this document as:**.

## 4. Reconciling

- **Reconciliations → Till (Z) ↔ bank**: the card totals of the Z reports against the batches credited by the bank (consecutive days, including weekends and bank holidays, are grouped), and cash against deposits.
- **Reconciliations → Invoices ↔ statements**: each bank debit is looked up among your invoices. Amount and date match exactly: reconciled. Amount only: "probable", to be confirmed. A right-click lets you confirm, undo or reconcile by hand.
- **Reconciliations → Bank reconciliation (left to reconcile)**: lists what no document justifies (bank fees, taxes…). A right-click creates a classification rule (nature, activity, third-party funds) that is reused afterwards.
- **Till and FDJ → My cash deposits**: follow your cash deposits until the bank credits them (7 days of delay tolerated by default).
- **Till and FDJ → FDJ of the week (to transfer / debited)**: the week's net balance against the FDJ debit.

Each screen has check boxes that filter by status and show the number of lines. Hidden lines are left out of exports and printouts.

## 5. Cash and statistics

- **Cash → Dashboard**: today's position, upcoming outflows, available cash after commitments and alerts (days without a Z, gaps in numbering or balances, overdue invoices, FDJ weeks without a statement…).
- **Cash → Bank account tracking** and **Cash position and forecast**.
- **Cash → Schedule (loan, rent, rentals…)**: commitments without a monthly invoice, loans with deferral, detection of recurring debits. VAT to pay is added if you set a VAT regime in the settings.
- **Statistics**: sales by family and month (against last year), FDJ, purchases by supplier, VAT, profitability.
- **History**: search across all financial years (text, supplier, date, amount or range); a double-click opens the PDF.

## 6. Exports, backups, settings

**Exports.** Each screen has **Export to CSV…** and **Print…** (also to PDF, A4 landscape, with your header, the date and the active filters). **File → Export for the accountant…** produces the sales, purchases and bank journals and the report of operations without a document. CSV files are UTF-8 with BOM (accents display correctly in Excel). The separator is the comma (standard) or the semicolon (French-language Excel, with a decimal comma): Fluxio asks at export time, or you fix it in the settings.

**Accounting status** (right-click): *To send*, *Sent to the accountant*, *Booked*.

**Backups**: **File → Backup and restore…**.
- An automatic copy is made when you quit, at most once a day, if the database holds documents. The last 10 are kept in `%APPDATA%\Fluxio\sauvegardes\`. It can be turned off in the settings.
- You can also make a full backup or one for a single financial year.
- Before any restore, Fluxio first backs up the current state.

**Settings** (**Settings → Company, financial year, language and CSV exports…**): company, SIRET, bank name, start of financial year, language (next start), VAT regime and day, weekly closing days (not flagged as "no Z"), automatic backup, CSV separator.

**Where is my data?** In `%APPDATA%\Fluxio\fluxio.db`, outside the program folder: an update or an uninstall does not touch it. **Settings → Open the data folder** opens it. Nothing is sent over the Internet.

## 7. License

Non-commercial use (individuals, charities, study…) is free. Use in a shop or company needs a named **license file**, free of charge, issued by the author to a selection of shops. To ask for one, open **Settings → License…**, follow the "Request a commercial license" link, then, once you have the file, choose **Install a license file…** after accepting the conditions ([conditions](LICENCE-COMMERCIALE.md)).

A missing or expired license **blocks nothing and touches no data**: Fluxio only shows "Non-commercial use" in the status bar and on PDFs and printouts. It warns you 30 days before expiry.

## 8. Common problems

- **"Already in the list"**: the PDF's content is identical to another document; the message says which one.
- **A document is read wrongly**: correct the fields before validating, or use **Read this document as:**. To report it, use the "Document read wrongly" issue template, **without attaching a real PDF** (hide names, IBANs and amounts).
- **Excel shows everything in one column**: export again with the semicolon.
- **A figure looks wrong**: Fluxio checks that net + VAT = gross and that balances chain, and flags problems; the final check is yours.
- **Language**: set in the settings (applied at the next start); `FLUXIO_LANG=fr` or `en` forces it.
- **Try it safely**: `FLUXIO_ENV=sandbox` uses a separate database (`fluxio_sandbox.db`); `FLUXIO_DB` sets the path of a database.
