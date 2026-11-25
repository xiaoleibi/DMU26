# Database Basics — spørgsmål til undervisningen (dag 1–4)

**Kilde:** `database (systime) (1).pdf`, kapitel 7, s. 2–26 (PDF'ens egen paginering).  
**Sprog:** Spørgsmålene er på dansk, som resten af øvelsesmaterialet. Facit til lærer findes nederst.

> Teacher note: the four sessions follow the handwritten `dag 1–4` labels and the blue divider lines on the PDF's contents page (PDF p. 1): day 1 = §7–§7.2.1, day 2 = §7.2.2, day 3 = §7.2.3–§7.2.4, day 4 = §7.2.5–§7.2.6. Adjust the grouping if your plan differs.

| Session | Emne | Afsnit | PDF-sider |
|---|---|---|---|
| Dag 1 | Databaser i hverdagen, relationsdatabaser, relationer | §7, §7.1, §7.2, §7.2.1 | 2–11 |
| Dag 2 | Primærnøgler, fremmednøgler, referentiel integritet | §7.2.2 | 11–15 |
| Dag 3 | E/R-diagrammer og normalisering | §7.2.3, §7.2.4 | 15–22 |
| Dag 4 | Datatyper og forespørgsler | §7.2.5, §7.2.6 | 22–26 |

---

## Dag 1 — Databaser, tabeller og relationer

1. Nævn tre situationer fra hverdagen, hvor du selv er i kontakt med en database. Hvordan får du adgang til dataene? *(Ø7.1)*
2. Hvorfor er det en fordel at strukturere data, før de gemmes — både for en virksomhed og for dig selv?
3. Et lille firma kan nøjes med et Excel-ark med kundens navn, adresse og telefon. Hvornår bliver regnearket utilstrækkeligt? Nævn to konkrete problemer fra teksten. *(Ø7.2)*
4. I figur 7.1 er der en kundetabel. Angiv tre søjler/felter og én post. Forklar forskellen på de to begreber.
5. Hvad er et databasesystem (DBMS)? Nævn tre eksempler fra teksten, og forklar forskellen på MySQL og MySQL Workbench/phpMyAdmin.
6. Hvad karakteriserer en relationsdatabase? Brug tabellerne KUNDER, VARER og ORDRER (figur 7.2) som eksempel.
7. I figur 7.3 står der et kundenummer i ORDRER-tabellen. Hvorfor står kundens navn og adresse ikke der også? Hvad vinder man ved det?
8. Forklar med egne ord, hvad en relation mellem to tabeller er.
9. Hvad er en 1-1-relation? Brug eksemplet med sælgere og ruter (figur 7.5). Hvorfor anbefaler teksten at undgå den?
10. Hvad er en 1-m-relation? Angiv, hvilken tabel der er "m"-siden i eksemplet med kunder og ordrer, og begrund svaret.
11. Hvad er en m-m-relation? Brug eksemplet varer/ordrer (figur 7.7). Hvilket problem opstår, og hvordan løser teksten det?
12. Er 1-m og m-1 to forskellige relationer? Begrund svaret.
13. En idrætsforening vil bruge tabellerne Spillere, Hold og Trænere. Hvilke relationer er der mellem tabellerne? Begrund hver relation. *(Ø7.4)*
14. En kunde kan afgive flere ordrer. Hvilket felt i ORDRER gør det muligt at hente kundens øvrige data fra KUNDER, og hvad skal være opfyldt, for at det virker?

## Dag 2 — Nøglefelter og referentiel integritet

1. Hvorfor skal hver post i en tabel være unik? Hvad går galt, hvis den ikke er det?
2. Hvad er en primærnøgle? Angiv primærnøglen i figur 7.9.
3. I figur 7.8 findes to kunder, der hedder Peter Jensen. Hvorfor kan `navn` ikke bruges som primærnøgle?
4. Teksten nævner `email` og `mobilnr` som mulige primærnøgler, men fravælger dem. Hvorfor?
5. Hvad er en sammensat nøgle? Forklar, hvordan man i kundetabellen kunne danne en sådan ved at kombinere navn og adressefelter.
6. Hvad er autonummerering, og hvilket felt i kundetabellen er velegnet til det?
7. Hvad er en fremmednøgle? Peg på feltet i "mange"-tabellen i eksemplet med kunder og postnumre (figur 7.10).
8. Hvilken datatype skal en fremmednøgle have i forhold til den primærnøgle, den peger på? Hvorfor er det vigtigt?
9. Hvad betyder referentiel integritet? Må man indsætte en kunde med `postnr = 9999`, hvis 9999 ikke findes i postnummer-tabellen? Begrund.
10. Hvilken relationstype er der mellem KUNDER og POSTNR? Begrund ud fra antallet af kunder pr. postnummer.
11. En skoledatabase skal have tabellerne KLASSER, ELEVER og LÆRERE. Forslå relevante felter i hver tabel. *(Ø7.5, del 1)*
12. Vælg en primærnøgle til hver af de tre tabeller, og begrund valgene. *(Ø7.5, del 2)*
13. Beskriv relationerne mellem de tre tabeller. Er nogle af relationerne vanskelige at afgøre? *(Ø7.5, del 3–4)*
14. Hvordan hænger primærnøgle og fremmednøgle sammen i en 1-m-relation? Brug elever og klasser som eksempel.

## Dag 3 — E/R-diagrammer og normalisering

1. Hvad betyder E/R, og hvad skal et E/R-diagram give dig overblik over?
2. Hvad er en entitet? Nævn fire entiteter, der er nævnt i teksten.
3. Hvad betyder diamanten i figur 7.11? Læs diagrammet højt: `KUNDER —1— HAR —m— ORDRER`.
4. Hvorfor kan m-m-relationer ikke håndteres direkte i det databaseprogram, teksten anvender? Hvad er løsningen?
5. I figur 7.13 er der KUNDER, ORDRER, ORDREINDHOLD og VARER. Angiv kardinaliteterne (1 eller m) ved hver relation, og forklar hvorfor ORDREINDHOLD findes.
6. Tegn et E/R-diagram for idrætsforeningens tabeller Spillere, Hold og Trænere. *(Ø7.6)*
7. Tegn et E/R-diagram for skoledatabasen med KLASSER, ELEVER og LÆRERE. *(Ø7.7)*
8. Hvad er formålet med normalisering? Nævn de tre normalformer i den rækkefølge, de skal opnås.
9. Hvilke to krav stilles der til 1. normalform? Må en kunde have to e-mailadresser i samme felt? *(figur 7.14–7.15)*
10. Hvorfor er `navn + gade + postnr` en dårlig primærnøgle? Hvordan løser figur 7.16 det?
11. Formuler kravet til 2. normalform. Hvorfor bryder `bynavn` kravet, når nøglen er sammensat af navn, gade og postnr?
12. Formuler kravet til 3. normalform. Hvorfor skal `bynavn` flyttes ud i en postnummer-tabel (figur 7.17)? Angiv nøgler og relationstype i den nye løsning.
13. Forklar forskellen på redundans og inkonsistente data. Giv et eksempel fra ordrehåndtering.
14. En bilforhandler har flere forretninger rundt i landet, og bilerne skal kunne identificeres ved, hvilken forretning de står i. Hvilke tabeller og nøgler skal der være, og hvordan ser E/R-diagrammet ud? *(Ø7.8)*

## Dag 4 — Datatyper og forespørgsler

1. Hvorfor betyder valget af datatype noget for både plads, hastighed og korrekte resultater?
2. Nævn de fem datatypekategorier i teksten, og giv et konkret felt fra kursuseksemplerne til hver.
3. Hvad hedder datatyperne for tekst og heltal i MySQL?
4. Hvordan hænger datatype sammen med validering? Brug eksemplet med feltet `postnr` og `INT(4)`.
5. Hvad er en inputmaske? Giv eksemplet med dato.
6. Hvad er autonummerering, og hvornår er det en fordel?
7. Hvorfor skal en fremmednøgle og den primærnøgle, den peger på, have samme datatype?
8. Vælg datatyper til tre felter i hver af de tre eksempel-databaser (idrætsforening, skole, bilforhandler). Begrund ét valg pr. database. *(Ø7.9–7.11)*
9. Hvad er en forespørgsel? Nævn de handlinger, man kan udføre med den.
10. Teksten giver to grunde til, at man ikke altid viser resultatet direkte i databaseprogrammet. Hvilke?
11. Hvordan kan en bruger på en hjemmeside udløse en forespørgsel uden selv at skrive SQL?
12. I figur 7.18 skal du finde kunder bosat på Fyn. Hvilke to tabeller skal bruges, og hvordan er de forbundet?
13. Formuler forespørgslen, der finder alle kunder bosat på Fyn. Hvilke kunder forventer du at få resultatet? *(Ø7.12, del 1)*
14. Formuler forespørgslen, der finder e-mailadresser på kunder, der vil modtage nyhedsbrev. Hvad mangler der i figur 7.18, for at resultatet er brugbart? *(Ø7.12, del 2)*
15. Formuler forespørgslen, der finder kunden Peter Jensen i Kolding. Hvorfor er navn alene ikke nok? *(Ø7.12, del 3)*

---

# Facit — kun til lærer

## Dag 1

1. F.eks. bibliotekets søgning, Kraks adressesøgning, webshop, skolens fraværssystem. Adgang via søgefelt/hjemmeside, ikke direkte adgang til dataene.
2. Data kan findes, sorteres og genbruges; samme oplysning skal ikke indtastes flere gange; på tværs af tabeller kan man hente data med søgninger.
3. Når mængden vokser, bliver søgning begrænset, og sammenkobling af data fra flere ark er upraktisk; samme stamdata skal indtastes igen og igen.
4. Felter: f.eks. `KUNDENAVN`, `ADRESSE`, `POSTNR`, `MOBILNR`, `EMAIL`. En post = én række med data om én kunde. Søjle = én type information.
5. Et DBMS er et system til at oprette og håndtere databaser. Eksempler: Access, SAP, MySQL. MySQL er databaseprogrammet; Workbench og phpMyAdmin er administrationsværktøjer til at strukturere og vedligeholde data.
6. Data gemmes i adskilte tabeller for bestemte typer (kunder, varer, ordrer), og tabellerne kobles sammen med relationer, så man kan søge på tværs.
7. Man gemmer kun `kundnr` og undgår at gentage navn/adresse. Stamdata indtastes én gang og hentes via relationen; mindre redundans.
8. En sammenkobling mellem to tabeller, så en post i den ene peger på en post i den anden.
9. Én post i tabel A svarer til præcis én i tabel B og omvendt (sælger ↔ rute). Da kan oplysningerne ofte samles i én tabel, og den anden tabel kan spares væk.
10. Én post i A kan have mange i B; customer → ordrer. KUNDER er "1"-siden, ORDRER er "m"-siden, fordi en kunde kan afgive flere ordrer, men en ordre hører til én kunde.
11. Mange poster i A kan relate til mange i B: en vare indgår i flere ordrer, en ordre indeholder flere varer. Det kan ikke håndteres direkte; indfør en mellemtabel (ORDREINDHOLD) og få to 1-m-relationer.
12. Nej. Det er den samme relation; kun rækkefølgen af tabellerne er vendt om.
13. F.eks. Spillere–Hold: 1-m (et hold har mange spillere); Trænere–Hold: 1-m eller m-m, hvis et hold kan have flere trænere, og en træner kan træne flere hold — så kræves en mellemtabel. Begrundelse skal afhænge af de antagelser, eleven gør.
14. `kundnr` i ORDRER. Det skal være den samme datatype som `kundnr` i KUNDER og pege på en eksisterende kunde.

## Dag 2

1. Ellers kan man ikke vide, hvilken post en søgning henviser til. Primærnøglen gør hver post entydig.
2. Det felt, der entydigt identificerer hver post. I fig. 7.9: `kundnr`.
3. Der findes to Peter Jensen med forskellig adresse/postnummer, så navnet er ikke entydigt.
4. De kan ændre sig og er derfor upålidelige som identifikation; kundenummer tildeles automatisk og ændres ikke.
5. En nøgle sammensat af flere felter, f.eks. `navn + gade + postnr`.
6. Databasen tildeler automatisk et nyt, stigende nummer til hver ny post — velegnet til `kundnr`.
7. Feltet i "mange"-tabellen, som er identisk med primærnøglen i "1"-tabellen: `postnr` i KUNDER peger på `postnr` i POSTNR.
8. Samme datatype — ellers kan relationen ikke kobles korrekt sammen.
9. En fremmednøgleværdi skal findes som primærnøgle i den relacionerede tabel. Nej: 9999 skal afvises.
10. 1-m: mange kunder kan have samme postnummer, men hver kunde har kun ét postnummer.
11. F.eks. KLASSER(`klassenr`, `trinniveau`), ELEVER(`elevnr`, `navn`, `klassenr`, ...), LÆRERE(`lærernr`, `navn`, ...).
12. `klassenr`, `elevnr`, `lærernr` — stabile og entydige; ikke navne.
13. Klasse–elever 1-m. Lærer–klasser kan være 1-m eller m-m, og en elev kan have flere lærere; det kræver afklaring/evt. mellemtabeller.
14. Primærnøglen i "1"-tabellen gentages som fremmednøgle i "mange"-tabellen: `klassenr` i ELEVER peger på `klassenr` i KLASSER.

## Dag 3

1. Entity/Relations-diagram; viser hvilke tabeller der er brug for, og hvordan de hænger sammen.
2. En selvstændig enhed med specielle egenskaber, som svarer til en tabel. F.eks. kunder, varer, ordrer, medarbejdere.
3. Relationsnavnet/forbindelsen mellem entiteterne. Læsning: en kunde kan have mange ordrer; en ordre hører til én kunde.
4. DBMS'et kan ikke håndtere m-m direkte. Indfør en tabel mellem de to tabeller, så m-m bliver til to 1-m-relationer.
5. KUNDER 1—HAR—m ORDRER; ORDRER 1—HAR—m ORDREINDHOLD; ORDREINDHOLD m—TILKNYTET—1 VARER. ORDREINDHOLD løser m-m mellem ordrer og varer.
6. F.eks. HOLD 1—m SPILLERE og HOLD 1—m TRÆNERE (eller mellemtabel ved m-m). Kardinaliteter skal begrundes.
7. KLASSER 1—m ELEVER; LÆRERE—KLASSER efter aftale (1-m eller m-m med mellemtabel).
8. Mindsker redundans og risiko for fejl ved at bygge tabellerne korrekt: 1. NF → 2. NF → 3. NF.
9. Tabellen skal have et nøglefelt, og hvert felt skal indeholde præcis én værdi. Nej — to e-mailadresser i ét felt er ikke tilladt.
10. Det er upraktisk og gør søgning/identifikation besværlig; indfør `kundernr` som primærnøgle.
11. 1. NF skal være opfyldt, og felter uden for primærnøglen må kun afhænge af hele primærnøglen. `bynavn` afhænger kun af `postnr`, som er en del af den sammensatte nøgle.
12. 2. NF skal være opfyldt, og ingen felter må kunne bestemmes af andre felter end primærnøglen. `bynavn` bestemmes af `postnr`, så det flyttes til POSTNR med `postnr` som primærnøgle; `postnr` i KUNDER bliver fremmednøgle. Relationen er 1-m.
13. Redundans = samme data gemmes flere steder og fylder unødigt. Inkonsistens = data, der burde være ens, er forskellige, f.eks. kundens navn/adresse skrevet forskelligt på flere ordrer.
14. F.eks. FORRETNINGER(`forretningsnr`, `adresse`, ...), BILER(`bilnr`, `forretningsnr`, `model`, ...). `forretningsnr` er fremmednøgle i BILER. E/R: FORRETNINGER 1—m BILER.

## Dag 4

1. Korrekt type sparer plads, giver hurtigere forespørgsler og muliggør validering; forkert type giver fejl eller spild.
2. Tekst, heltal, decimaltal, boolean, dato/tid — f.eks. `navn`, `antal`, `pris`, `nyhedsbrev`, `ordredato`.
3. `VARCHAR` og `INT`.
4. Typen sætter grænser for, hvad der kan indtastes; `INT(4)` tillader højst fire cifre og kan begrænses yderligere til intervallet 3000–8000.
5. En skabelon for indtastning, f.eks. `dd-mm-yyyy`.
6. Nye poster får automatisk et stigende nummer — bruges til primærnøgler som `kundnr`.
7. Så kan de kobles korrekt sammen; fx `postnr` i begge tabeller.
8. F.eks. idræt: `navn` → tekst, `antalkunder`/`antal` → heltal, `pris` → decimaltal. Skole: `klassenr` → heltal/tekst. Bilforhandler: `model` → tekst. Begrundelse: indholdet i feltet afgør typen.
9. En manipulation af databasen: indsætte, søge, ændre eller slette data, ofte med visning af resultatet bagefter.
10. Resultatet er ikke brugervenligt præsenteret, og man har ikke altid direkte adgang til databasen.
11. Via en formular på hjemmesiden; når brugeren trykker på søgeknappen, sendes forespørgslen til databasen, som returnerer svaret.
12. KUNDER og POSTNR; `kundnr` er primærnøgle i KUNDER, `postnr` er fremmednøgle og primærnøgle i POSTNR.
13. Find kunder, hvis `postnr` i KUNDER matcher en postnummer/by på Fyn — konkret `postnr = 5000` (Odense C): Mette Nielsen (003) og Jens Andersen (004).
14. Vælg kunder med `NYHEDSBREV = Ja` og vis `EMAIL`: 001, 004, 005, 006. E-mailfeltet er tomt i figur 7.18, så der skal indtastes adresser, før resultatet er brugbart.
15. Kombinér `navn = 'Peter Jensen'` med `postnr = 6000` (Kolding) — dvs. kunde 001. Navn alene giver to Peter Jensen (001 og 005).
